return function (self,actionName,weaponSpeed) 
local oriDelay = _MotionDelayManager.motionDelay[actionName]
local delay = _Util:MathRound(oriDelay * (math.max(2, weaponSpeed) + 10) / 16 / 30) * 30
return delay
end