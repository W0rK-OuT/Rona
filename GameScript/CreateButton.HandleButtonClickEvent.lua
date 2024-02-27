return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "Create" then
	_CreateChar:CreateClient()
elseif name == "Left" then
	_CreateChar:ButtonEvent(true, Entity.Parent.Name)
elseif name == "Right" then
	_CreateChar:ButtonEvent(false, Entity.Parent.Name)
end
end