return function (self) 
if self.invIndex == 0 then
	return
end
local inv = _UserService.LocalPlayer.PlayerInventory:GetInv(self.invSlot)
if inv == nil then
	return
end

local find = self.invGrid:GetChildByName(tostring(self.invIndex))
if find == nil then
	return
end

local findSlot = find:GetChildByName("slot").TextComponent.Text
if _UtilLogic:IsNilorEmptyString(findSlot) then
	return
end

if self.invSlot == 0 or self.invSlot == 5 then
	_MessageLogic:DropMessage("해당 아이템은 판매할 수 없습니다.")
	return
end

local item = inv[findSlot]
if item == nil then
	return
end
local id = item["id"]
local isOne = id < 2000000 or self:IsRecharge(id)
self.sellIsEquip = isOne

self.sellClone:SetEnable(true)
_UIManager:Add(self.sellClone)

if isOne then
	self.sellClone:GetChildByName("InText"):SetEnable(false)
	self.sellClone:GetChildByName("Input"):SetEnable(false)
	self.sellClone:GetChildByName("InYes"):SetEnable(false)
	self.sellClone:GetChildByName("Text"):SetEnable(true)
	self.sellClone:GetChildByName("Yes"):SetEnable(true)
else
	self.sellClone:GetChildByName("InText"):SetEnable(true)
	self.sellClone:GetChildByName("InYes"):SetEnable(true)
	self.sellClone:GetChildByName("Text"):SetEnable(false)
	self.sellClone:GetChildByName("Yes"):SetEnable(false)
	local input = self.sellClone:GetChildByName("Input")
	input:SetEnable(true)
	input.TextInputComponent.Text = "" .. math.min(9999, item["quantity"])
	input.TextInputComponent:ActivateInputField()
end
end