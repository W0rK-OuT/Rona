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
	_MobileKeyManager:CloseUI()
elseif name == "Plus" then
	_MobileKeyManager:AddButton()
elseif name == "Rest" then
	_MobileKeyManager:ResetButton()
elseif name == "JoyButton" then
    --_MobileKeyManager:CloseUI()
end
end