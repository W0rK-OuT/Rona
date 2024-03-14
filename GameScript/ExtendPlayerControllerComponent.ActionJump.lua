return function (self) 
if _PlayerWeather:IsKeyStop() then
	return
end
if _PlayerWeather.weakness then
	return
end
local now = _UtilLogic.ElapsedSeconds
if _PlayerWeather.swim then
	local rigid = _PlayerComponent.rigid
	if rigid:IsOnGround() then
		_PlayerWeather.jumpTime = now + 0.2 
		self.__PlayerControllerComponent__.ActionJump(self)
	else
		local curAnim = _PlayerComponent.state.CurrentStateName
		if curAnim == "CLIMB" or curAnim == "LADDER" then
			_PlayerWeather.jumpTime = now + 0.3
			self.__PlayerControllerComponent__.ActionJump(self)
		elseif _PlayerWeather.jumpTime < now then
			local x = math.abs(rigid.RealMoveVelocity.x * 60)
			local yPower = 8 * (1 + rigid.WalkJump)
			---@type Vector2
			local newJump
			if _SkillMove.left and _SkillMove.right then
				newJump = Vector2(0, yPower)
			elseif _SkillMove.left then
				newJump = Vector2(-x, yPower)
			elseif _SkillMove.right then
				newJump = Vector2(x, yPower)
			else
				newJump = Vector2(0, yPower)
			end
			_PlayerComponent:SeForce(newJump)
			_PlayerWeather.jumpTime = now + 0.2 
		end
	end
	return
end
self.__PlayerControllerComponent__.ActionJump(self)
end