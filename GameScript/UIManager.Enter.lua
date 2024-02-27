return function (self) 
local entity = self:LastEntity()
if entity == nil then
	_ChatManager:EnterManager()
	return
end
local name = entity.Name
if name == _ShopUILogic.sellEntityName and _ShopUILogic.sellIsEquip then
    _ShopUILogic:SellAction(1, true)
elseif name == _ShopUILogic.buyEntityName and _ShopUILogic.buyIsEquip then
    _ShopUILogic:BuyAction(1, true)
elseif name == _ShopUILogic.rechargeEntityName then
	_ShopUILogic:Recharge(_UserService.LocalPlayer, _ShopUILogic.rechargeSlot)
	_ShopUILogic:CloseRecharge()
elseif name == _MessageLogic.entityName then
	_MessageLogic:CloseDropMessage()
elseif name == _MessageLogic.bigName then
	_MessageLogic:CloseBigDropMessage()
else
	_ChatManager:EnterManager()
end
-- enter 처리
end