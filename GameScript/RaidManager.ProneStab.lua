return function (self,actionName,weaponSpeed) 
local oriDelay = _MotionDelayManager.motionDelay[actionName]
local delay = math.ceil(oriDelay * (math.max(2, weaponSpeed) + 10) / 16 / 30) * 30
return delay
end