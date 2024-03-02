return function (self,index) 
if index == nil then
	self:CloseBuy()
	return
end

local items = _Util:FindTable_All("BMItems" .. self.tab)
if items == nil then
	self:CloseBuy()
	return
end
local item = items[index]
if item == nil then
	self:CloseBuy()
	return
end
local id = tonumber(item["id"])
local price = tonumber(item["price"])
local quantity = _GameUtil:ConvertValue(item["quantity"], 1)

self.buyAction:GetChildByName("Text").TextComponent.Text = "'" .. _ItemData:GetItem(id)["name"] .. "' " .. quantity .. "개를\n구매하시겠습니까?"
self.lastIndex = index
self.buyAction:SetEnable(true)
_SoundService:PlaySound("28a57c34a0b042f6943e6c3048cb9ddc", 1)
end