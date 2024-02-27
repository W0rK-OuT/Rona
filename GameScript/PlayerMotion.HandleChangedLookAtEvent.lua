return function (self,event) 
-- Parameters
local LookAtX = event.LookAtX
---------------------------------------------------------
local state = self.Entity.StateComponent.CurrentStateName
if state == "LADDER" or state == "CLIMB" then
	_ShadowPartnerManager:UpdateLook(self.Entity, true, LookAtX < 0)
else
	_ShadowPartnerManager:UpdateLook(self.Entity, false, LookAtX < 0)
end
_TamingManager:UpdateLookAt(self.Entity, LookAtX < 0)
end