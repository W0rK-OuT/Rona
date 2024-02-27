return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
_CharInfoLogic.inputEnter = true
_CharInfoLogic:FindCharServer(Text, _UserService.LocalPlayer.Name)
end