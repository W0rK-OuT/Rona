return function (self,swim) 
self.swim = swim
_PlayerComponent:SetGravity(1)
_UserService.LocalPlayer.CurrentMap.MapComponent.AirAccelerationXFactor = swim and 15 or 1
_StatUILogic:UpdateJump()
end