return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "Exit" then
	_PlayerKeyLogic:CloseUI()
elseif name == "KeyReset" then
	_PlayerKeyLogic:ResetButton()
elseif name == "Quick" then
	_PCKeyManager:OpenUI()
elseif name == "Remove" then
	_PlayerKeyLogic:ClickRemoveKey()
end
end