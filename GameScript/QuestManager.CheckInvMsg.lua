return function (self,player,questID,state,isMsg) 
local questData = _QuestData:GetData(questID)
if questData == nil then
	return false
end
local act = questData["act" .. state]
if act == nil then
	return false
end

local money = act["money"]
if money ~= nil then
	if money < 0 then
		local calMoney = -money
		if calMoney > 0 and player.PlayerInventory:GetMeso() < calMoney then
			if self:IsClient() and isMsg then
				_MessageLogic:DropMessage("메소가 부족합니다.")
			end
			return false
		end
	end
end

local items = act["item"]
if items ~= nil then
	local nItems = {}
	local nProps = {}
	local nProps2 = {}
	for k, v in pairs(items) do
		if self:CheckGetItem(player, v) then
			local id = v["id"]
			local itemType = math.floor(id / 1000000)
			local count = _GameUtil:ConvertValue(v["count"], 0)
			if count > 0 then
				local prop = _GameUtil:ConvertValue(v["prop"], 0)
				if prop > 0 then
					nProps[itemType] = 1
				elseif prop < 0 then
					nProps2[itemType] = 1
				else
					nItems[itemType] = _GameUtil:ConvertValue(nItems[itemType], 0) + 1
				end
			end
		end
	end
	for k, v in pairs(nProps) do
		nItems[k] = _GameUtil:ConvertValue(nItems[k], 0) + 1
	end
	for k, v in pairs(nProps2) do
		nItems[k] = _GameUtil:ConvertValue(nItems[k], 0) + 1
	end
	for k, v in pairs(nItems) do
		if player.PlayerInventory:GetFreeSlotCount(k) < v then
			if self:IsClient() and isMsg then
				_MessageLogic:DropMessage("인벤토리 슬롯이 부족합니다.")
			end
			return false
		end
	end
end 

return true
end