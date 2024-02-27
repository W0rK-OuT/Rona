return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TriggerComponent
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local TriggerBodyEntity = event.TriggerBodyEntity
---------------------------------------------------------
if TriggerBodyEntity == _UserService.LocalPlayer then
	if TriggerBodyEntity.PlayerControllerComponent.LookDirectionX > 0 then
		_PlayerComponent:AdForce(Vector2(-1, 15))
	else
		_PlayerComponent:AdForce(Vector2(1, 15))
	end
end
end