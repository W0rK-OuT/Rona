return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "No" then
	_ShopUILogic:CloseBuy()
elseif name == "InYes" then
	local bundle = tonumber(_ShopUILogic.buyClone:GetChildByName("Input").TextInputComponent.Text)
	_ShopUILogic:BuyAction(bundle, true)
elseif name == "Yes" then
	_ShopUILogic:BuyAction(1, true)
end
end