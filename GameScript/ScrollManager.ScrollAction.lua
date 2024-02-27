return function (self) 
local msgType = self:Check(_UserService.LocalPlayer, self.equipSlot, self.scrollSlot)
if msgType == 0 then
	self:UseScroll(_UserService.LocalPlayer, self.equipSlot, self.scrollSlot)
elseif msgType == 1 then
	_MessageLogic:DropMessage("아이템 슬롯이 결정되지 않았습니다.")
elseif msgType == 2 then
	_MessageLogic:DropMessage("주문서 슬롯이 결정되지 않았습니다.")
elseif msgType == 3 then
	_MessageLogic:DropMessage("장비가 없습니다.")
elseif msgType == 4 then
	_MessageLogic:DropMessage("주문서가 없습니다.")
elseif msgType == 5 then
	_MessageLogic:DropMessage("사용한 아이템이 주문서가 아닙니다.")
elseif msgType == 6 then
	_MessageLogic:DropMessage("주문서와 아이템의 매칭이 다릅니다.")
end
end