return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
if _ShopUILogic.buyEnter then
	_ShopUILogic.buyEnter = false
	_ShopUILogic:CloseBuy()
end
end