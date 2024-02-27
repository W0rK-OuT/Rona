return function (self) 
if _UserService.LocalPlayer.RigidbodyComponent:IsOnGround() then
	local isLeft = _UserService.LocalPlayer.TransformComponent.WorldPosition.x < self.Entity.TransformComponent.WorldPosition.x
	_EventStatManager:EventDamage(true, isLeft and -1 or 1, 2, 0)
end
end