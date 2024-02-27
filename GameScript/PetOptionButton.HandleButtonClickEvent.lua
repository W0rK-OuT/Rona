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
	_PetOptionManager:CloseUI()
else
	_PetOptionManager:ButtonEvent(Entity.Parent.Name)
end
end