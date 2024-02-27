return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "ExitButton" then
	_ChatChangeManager:CloseUI()
else
	local num = tonumber(name)
	_ChatManager:ChangeChatType(num)
	_ChatChangeManager:CloseUI()
end
end