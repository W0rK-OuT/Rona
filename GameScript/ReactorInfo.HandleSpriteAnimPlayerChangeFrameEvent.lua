return function (self,event) 
local FrameIndex = event.FrameIndex
local TotalFrameCount = event.TotalFrameCount
---------------------------------------------------------
if FrameIndex == TotalFrameCount then
	if self.isHit then
		self.isHit = false
		self:SetRUID(true, self.state, self.state)
	end
end
end