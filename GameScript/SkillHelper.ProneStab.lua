return function (self,actionName,weaponSpeed) 
local oriDelay = _MotionDelayManager.motionDelay[actionName]
local delay = _SkillHelper:CalcSpeed(oriDelay, weaponSpeed)
return delay
end