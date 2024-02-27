return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
if _TradeCountManager.enter then
	_TradeCountManager.enter = false
	_TradeCountManager:ClearText()
end
end