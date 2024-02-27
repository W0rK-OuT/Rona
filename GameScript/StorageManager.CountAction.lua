return function (self,num) 
if num == nil then
	num = tonumber(self.countBox:GetChildByName("Input").TextInputComponent.Text)
end
if num == nil or num <= 0 then
	_MessageLogic:DropMessage("1 이상의 숫자만 가능합니다.")
	return
end

local inv = _UserService.LocalPlayer.PlayerInventory:GetInv(self.boxTab)
if inv == nil then
	return
end

local item = inv[self.boxSlot]
if item == nil then
	return
end

local quantity = item["quantity"]
if num > quantity then
	_MessageLogic:DropMessage(quantity .. " 이하의 숫자만 가능합니다.")
	return
end

if self.boxTab == 5 then
	_MessageLogic:DropMessage("캐시 아이템은 넣을 수 없습니다.")
	return
end

self:PushServer(_UserService.LocalPlayer, self.boxTab, self.boxSlot, num, self.tab)
self:CloseCountBox()
end