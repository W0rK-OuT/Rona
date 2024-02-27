return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
_ShopUILogic:BuyAction(tonumber(Text), false)
_ShopUILogic.buyEnter = true
end