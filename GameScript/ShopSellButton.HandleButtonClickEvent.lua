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
	_ShopUILogic:CloseSell()
elseif name == "InYes" then
	local bundle = tonumber(_ShopUILogic.sellClone:GetChildByName("Input").TextInputComponent.Text)
	_ShopUILogic:SellAction(bundle, true)
elseif name == "Yes" then
	_ShopUILogic:SellAction(1, true)
end
end