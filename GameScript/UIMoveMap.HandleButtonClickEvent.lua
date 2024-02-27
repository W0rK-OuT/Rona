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
	_MoveLogic:CloseUI()
else
	_SoundService:PlaySound("f39036a99c644adaae756cf6bec0ef44", 2)
	_MoveLogic:CloseUI()
	_MoveLogic:MoveMap(Entity.Parent.Name, _UserService.LocalPlayer)
end
end