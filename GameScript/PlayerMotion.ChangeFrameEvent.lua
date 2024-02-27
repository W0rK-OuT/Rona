return function (self,event) 
if _UtilLogic:IsNilorEmptyString(self.attState) then
	if not _UtilLogic:IsNilorEmptyString(self.curState) then
		self.partner.ShadowInfo:UpdateSpecialMotion(self.curState, event.FrameIndex)
	end
else
	self.partner.ShadowInfo:UpdateSpecialMotion(self.attState, event.FrameIndex)
end
end