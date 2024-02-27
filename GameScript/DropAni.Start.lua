return function (self,rotate,startPos,endPos,time) 
local timeFunc = function()
	if not isvalid(self.Entity) then
		_TimerService:ClearTimer(self._T.dropTime)
		return
	end
	_SoundService:PlaySound("2cbd0fd67ba3493491ea2e18a776a095", 1)
	self.Entity:SetEnable(true)
	self.rotate = rotate
	self.startPos = startPos
	self.endPos = endPos
	self.start = true
	
	---@type Vector3
	local worldPos = self.trans.WorldPosition
	
	if startPos.x ~= endPos.x then
		---@type Tweener
		local tween
		local func = function(tweenValue)
			if not isvalid(self.Entity) then
				tween:Destroy()
			end
			self.trans.WorldPosition.x = tweenValue
		end
		tween = _TweenLogic:PlayTween(startPos.x, endPos.x, 0.9, EaseType.Linear, func)
	end
end
self._T.dropTime = _TimerService:SetTimerOnce(timeFunc, time / 1000)
end