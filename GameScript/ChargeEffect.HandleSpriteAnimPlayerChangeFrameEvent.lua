return function (self,event) 
local FrameIndex = event.FrameIndex
local TotalFrameCount = event.TotalFrameCount
---------------------------------------------------------
if self.skillID == 3221001 then
	if FrameIndex == 1 then
		if not self.check then
			self.check = true
			return
		end
		if not _UtilLogic:IsNilorEmptyString(self.nextRUID) then
			self.Entity.SpriteRendererComponent.SpriteRUID = self.nextRUID 
			self.nextRUID = ""
		end
	end
end
end