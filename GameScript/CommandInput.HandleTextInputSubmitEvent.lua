return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
_CommandLogic:CloseUI()
_GMCommandLogic:Command(_UserService.LocalPlayer, Text)
end