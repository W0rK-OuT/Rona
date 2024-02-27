return function (self) 
if self.shopIndex == 0 then
	return
end
local item = self.clone:GetChildByName("LeftBotton"):GetChildByName(tostring(self.shopIndex))
if item == nil then
	return
end

local id = tonumber(item:GetChildByName("id").TextComponent.Text)
if id == nil then
	return
end

local isOne = id < 2000000 or self:IsRecharge(id)
self.buyIsEquip = isOne

self.buyClone:SetEnable(true)
_UIManager:Add(self.buyClone)

if isOne then
	self.buyClone:GetChildByName("InText"):SetEnable(false)
	self.buyClone:GetChildByName("Input"):SetEnable(false)
	self.buyClone:GetChildByName("InYes"):SetEnable(false)
	self.buyClone:GetChildByName("Text"):SetEnable(true)
	self.buyClone:GetChildByName("Yes"):SetEnable(true)
else
	self.buyClone:GetChildByName("InText"):SetEnable(true)
	self.buyClone:GetChildByName("InYes"):SetEnable(true)
	self.buyClone:GetChildByName("Text"):SetEnable(false)
	self.buyClone:GetChildByName("Yes"):SetEnable(false)
	local input = self.buyClone:GetChildByName("Input")
	input:SetEnable(true)
	input.TextInputComponent.Text = ""
	input.TextInputComponent:ActivateInputField()
end
end