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
	_FindInvManager:CloseUI()
else
	local num = tonumber(name)
	_FindInvManager:ChangeTab(num)
end
end