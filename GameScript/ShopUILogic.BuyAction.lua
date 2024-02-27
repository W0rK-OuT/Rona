return function (self,bundle,update) 
local slot = self.shopIndex
if slot == 0 then
	return
end
if bundle == nil or bundle <= 0 then
	_MessageLogic:DropMessage("1 이상의 숫자만 가능합니다.")
	return
end
if bundle >= 10000 then
	_MessageLogic:DropMessage("9,999 이하의 숫자만 가능합니다.")
	return
end
if _TradeManager.main.Enable then
	_MessageLogic:DropMessage("교환 중에는 구매할 수 없습니다.")
	return
end
if update then
	self:CloseBuy()
end
self:BuyItem(_UserService.LocalPlayer, slot, bundle)
end