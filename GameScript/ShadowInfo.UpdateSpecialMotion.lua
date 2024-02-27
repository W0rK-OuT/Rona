return function (self,motion,frame) 
if self.lastMotion == motion and self.lastIndex == frame then
	return
end
self.lastMotion = motion
self.lastIndex = frame

local src = self.Entity.SpriteRendererComponent

local ruid = _ShadowPartnerManager.motion[motion]
if ruid == nil then
	return
end
src.SpriteRUID = ruid

if frame == -1 then
	src.StartFrameIndex = 0
	src.EndFrameIndex = 2147483647
else
	src.StartFrameIndex = frame
	src.EndFrameIndex = frame
end
end