return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
_TradeMesoManager:Enter(tonumber(Text))
_TradeMesoManager:CloseUI()
_TradeMesoManager.enter = true
end