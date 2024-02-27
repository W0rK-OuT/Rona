return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: RigidbodyComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local AttachedEntity = event.AttachedEntity
---------------------------------------------------------
_ShadowPartnerManager:UpdateLook(self.Entity, true, self.Entity.PlayerControllerComponent.LookDirectionX < 0)
if self.Entity ~= _UserService.LocalPlayer then
	return
end
_SkillMove.jump = false
_SkillMove:CancelWings(false)

--_PlayerComponent.move.InputSpeed = _PlayerComponent.rigid.WalkSpeed
--AttachedEntity.ClimbableComponent.SpeedFactor.y = _PlayerComponent.rigid.WalkSpeed
end