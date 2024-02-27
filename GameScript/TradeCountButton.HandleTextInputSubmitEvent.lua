return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
_TradeCountManager:Enter(tonumber(Text))
_TradeCountManager:CloseUI()
_TradeCountManager.enter = true
end