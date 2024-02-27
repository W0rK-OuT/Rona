return function (self,itemID,quantity,isChat) 
if quantity == 0 then
	return
end

local msgStr
local itemName = _ItemData:ItemName(itemID)
local isEquip = itemID < 2000000

if quantity > 0 then
	local eq = {"장비", "소비", "설치", "기타", "캐시"}
	if isEquip then
		msgStr = _SkillStart:ConvertString(eq[math.floor(itemID / 1000000)], "?") .. " 아이템을 얻었습니다 (" .. itemName .. ")"
	else
		msgStr = _SkillStart:ConvertString(eq[math.floor(itemID / 1000000)], "?") .. " 아이템을 얻었습니다 (" .. itemName .. " " .. math.floor(quantity) .. "개)"
	end
else
	if isEquip then
		msgStr = "아이템을 잃었습니다 (" .. itemName .. ")"
	else
		msgStr = "아이템을 잃었습니다 (" .. itemName .. " " .. math.floor(-quantity) .. "개)"
	end
end

if isChat then
	_MessageLogic:ChatMessage(3, msgStr)
else
	_MessageLogic:ShowMessage(msgStr)
end
end