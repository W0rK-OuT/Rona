return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
_StartGame.removeInfo:GetChildByName("InPut").TextInputComponent.Text = ""
end