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
	_TradeCountManager:CloseUI()
elseif name == "Yes" then
	_TradeCountManager:Enter(tonumber(_TradeCountManager.input.Text))
	_TradeCountManager:CloseUI()
end
end