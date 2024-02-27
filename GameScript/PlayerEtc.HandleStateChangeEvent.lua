return function (self,event) 
if self.Entity == _UserService.LocalPlayer then
	return
end

local CurrentStateName = event.CurrentStateName
local PrevStateName = event.PrevStateName

local preRope = PrevStateName == "CLIMB" or PrevStateName == "LADDER"
local curRope = CurrentStateName == "CLIMB" or CurrentStateName == "LADDER"

if not preRope and not curRope then
	return
end
_ShadowPartnerManager:UpdateLook(self.Entity, curRope, self.Entity.PlayerControllerComponent.LookDirectionX < 0)
end