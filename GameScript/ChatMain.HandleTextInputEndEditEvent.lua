return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
if self.submit then
	self.submit = false
	_ChatManager:ClearMessage()
end
_ChatManager.isChat = false
end