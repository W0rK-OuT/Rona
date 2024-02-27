return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
if _ShopUILogic.sellEnter then
	_ShopUILogic.sellEnter = false
	_ShopUILogic:CloseSell()
end
end