return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
if _CharInfoLogic.inputEnter then
	_CharInfoLogic:ClearInputText()
	_CharInfoLogic.inputEnter = false
end
end