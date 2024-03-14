return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "Exit" then
	_ShopUILogic:CloseUI()
elseif name == "Buy" then
	_ShopUILogic:OpenBuy()
elseif name == "Sell" then
	_ShopUILogic:OpenSell()
elseif name == "Repurchase" then
	_ShopReBuyManager:OpenUI()
elseif name == "Recharge" then
	_ShopUILogic:OpenRecharge(nil)
elseif _UtilLogic:Contains(name, "inv") then
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_ShopUILogic:SwitchTab(tonumber(_UtilLogic:SubString(name, 4)))
end
end