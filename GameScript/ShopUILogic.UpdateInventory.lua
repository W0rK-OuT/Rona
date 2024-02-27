return function (self) 
if not self.clone.Enable then
	return
end

if self.invSlot < 1 or self.invSlot > 5 then
	return
end

local player = _UserService.LocalPlayer
local playerInv = player.PlayerInventory
---@type table
local inv = playerInv:GetInv(self.invSlot)
if inv == nil then
	return
end

local enableTable = {}
local grid = self.invGrid
local jobType = _GameUtil:JobType(player.PlayerStats.job)

local invIdx = 1
local slotMax = playerInv:GetMaxSlot(self.invSlot)
for idx = 1, slotMax do
	local slot = tostring(idx)
	local item = inv[slot]
	if item == nil then
		continue
	end

	local id = item["id"]
	local itemData = _ItemData:GetItem(id)
	if _UtilLogic:IsNilorEmptyString(itemData["ruid"]) then
		continue
	end
	local itemInfo = _ItemData:GetItemInfo(id)
	
    --if not _ItemData:CanSale(itemInfo, item) then
    --    continue
    --end
	
	local price = _GameUtil:ConvertValue(itemInfo["price"], 0)
	local clone = grid:GetChildByName(tostring(invIdx))
	if clone == nil then
		clone = _SpawnService:SpawnByEntity(self.invItemSample, tostring(invIdx), Vector3.zero, grid)
	end
	if invIdx == self.invIndex then
		clone:GetChildByName("SpriteA"):SetEnable(true)
	else
		clone:GetChildByName("SpriteA"):SetEnable(false)
	end
	local unitPrice = _GameUtil:ConvertValue(itemInfo["unitPrice"], 0)
	local unitMsg = ""
	if unitPrice > 0 and self:IsRecharge(id) then
		local max = _GameUtil:ConvertValue(itemInfo["slotMax"], 0)
		if (math.floor(id / 10000) == 207 and jobType == 4) or (math.floor(id / 10000) == 233 and jobType == 5) then
			max += player.PlayerSkill.recharge			
		end
		
		local count = max - item["quantity"]
		local cost = math.ceil(count * unitPrice)
		
		if count > 0 then
			unitMsg = " / 충전 : " .. _Util:ConvertComma(cost)
			clone:GetChildByName("Recharge"):SetEnable(true)
		else
			clone:GetChildByName("Recharge"):SetEnable(false)
		end
		price = math.ceil(price + unitPrice * item["quantity"])
	else
		clone:GetChildByName("Recharge"):SetEnable(false)
	end
	if id < 2000000 then
		clone:GetChildByName("quantity").TextComponent.Text = ""
	else
		clone:GetChildByName("quantity").TextComponent.Text = "" .. item["quantity"]
	end
	local entity = clone:GetChildByName("RUID")
	_ItemData:SetNativeSize(entity, id)
	entity.SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(id, itemData["ruid"])
	clone:GetChildByName("Name").TextComponent.Text = itemData["name"]
	if not _ItemData:CanSale(itemInfo, item) then
		clone:GetChildByName("Price").TextComponent.Text = "0 메소"
	else
		clone:GetChildByName("Price").TextComponent.Text = _Util:ConvertComma(price) .. " 메소" .. unitMsg
	end
	clone:GetChildByName("slot").TextComponent.Text = slot
	clone:SetEnable(true)
	
	enableTable[tostring(invIdx)] = 0
	invIdx = invIdx + 1
end

for key, value in pairs(grid.Children) do
	if enableTable[value.Name] == nil then
		value:SetEnable(false)
	end
end
end