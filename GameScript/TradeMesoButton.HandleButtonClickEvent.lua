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
	_TradeMesoManager:CloseUI()
elseif name == "Yes" then
	_TradeMesoManager:Enter(tonumber(_TradeMesoManager.input.Text))
	_TradeMesoManager:CloseUI()
end
end