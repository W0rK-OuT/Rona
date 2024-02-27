return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "ExitButton" then
	_BMShop:CloseUI()
elseif name == "Buy" then
	_BMShop:BuyButton(Entity.Parent.Name)
end
end