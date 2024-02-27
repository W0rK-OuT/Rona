return function (self,isShop) 
if isShop then
	_ShopUILogic:CloseUI()
else
	self:CloseUI()
end
end