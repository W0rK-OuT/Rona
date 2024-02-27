return function (self) 
if _PlayerWeather.stun then
	return
end
if _PlayerWeather.weakness then
	return
end

if _UserService.LocalPlayer.RigidbodyComponent:IsOnGround() then
	if not _PlayerWeather.downJump then
		return
	end
	local pos = _UserService.LocalPlayer.TransformComponent.WorldPosition:ToVector2()
	local list = _UserService.LocalPlayer.CurrentMap.FootholdComponent:RaycastAll(pos, Vector2.down, 6)
	if #list >= 2 then
		_PlayerWeather.jumpTime = _UtilLogic.ElapsedSeconds + 0.6
		self.__PlayerControllerComponent__.ActionDownJump(self)
	end
else
	self.__PlayerControllerComponent__.ActionDownJump(self)
end
end