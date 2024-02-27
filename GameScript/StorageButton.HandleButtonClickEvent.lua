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
	_StorageManager:CloseUI()
elseif name == "Meso" then
	_StorageManager:OpenMesoBox(true)
elseif name == "PushMeso" then
	_StorageManager:OpenMesoBox(false)
end
end