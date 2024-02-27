return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
if _TradeMesoManager.enter then
	_TradeMesoManager.enter = false
	_TradeMesoManager:ClearText()
end
end