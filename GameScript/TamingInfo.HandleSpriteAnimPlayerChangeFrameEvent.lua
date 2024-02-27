return function (self,event) 
local FrameIndex = event.FrameIndex
if FrameIndex == 1 then
	if self.first and self.lastMotion ~= "stand" then
		self:UpdateRUID("stand")
		return
	end
	self.first = true
end
--local TotalFrameCount = event.TotalFrameCount
self.frameIndex = FrameIndex
self:UpdateMotion()
end