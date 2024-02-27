return function (self,spawnPos,ruid,isLeft,ddd,mobHitCount,attackCount,time,desVector,isOneBall,baseDelay,noBallEffect,findRange,rotate,ballSpeed) 
if noBallEffect > 0 then
	time = findRange / (ballSpeed / 0.75)
end
if time == 0 then
	return
end

local map = _UserService.LocalPlayer.CurrentMap

local del = function()
	for idx = 1, attackCount do
		if noBallEffect == 0 or mobHitCount < noBallEffect then
			if not isvalid(map) then
				return
			end
			local spawn = _SpawnService:SpawnByModelId("model://1c70cb88-6547-401d-b838-91c3d9890e97", "ball", spawnPos:ToVector3(), map)
			if rotate > 0 then
				spawn.BallInfo.rotate = isLeft and rotate or -rotate
			end
			spawn.SpriteRendererComponent.SpriteRUID = ruid
			if isLeft then
				spawn.TransformComponent:Rotate(ddd - 180)
			else
				spawn.TransformComponent:Rotate(ddd)
				spawn.TransformComponent.Scale.x = -1
			end
			local nY = 0.1 * attackCount / 2 - 0.05 - 0.1 * (idx - 1)
			local desX
			if noBallEffect > 0 then
				desX = spawnPos.x + (isLeft and -findRange or findRange)
			else
				desX = desVector.x
			end
			_TweenLogic:MoveTo(spawn, Vector2(desX, desVector.y + nY), time, EaseType.Linear)
			spawn:Destroy(time)
		end
		
        if not isOneBall then
            wait(0.12)
        end
	end
end
_TimerService:SetTimerOnce(del, baseDelay / 1000)
end