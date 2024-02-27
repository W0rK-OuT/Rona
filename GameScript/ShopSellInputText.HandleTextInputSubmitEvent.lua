return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
_ShopUILogic:SellAction(tonumber(Text), false)
_ShopUILogic.sellEnter = true
end