return function (self,event) 
if not self.on then
	return
end

-- Parameters
local ActionState = event.ActionState
--local endFrameIndex = event.endFrameIndex
--local needResetAction = event.needResetAction
--local playRate = event.playRate
--local startFrameIndex = event.startFrameIndex
---------------------------------------------------------
self.curState = tostring(ActionState)
self.partner.ShadowInfo:UpdateSpecialMotion(self.curState, 0)
end