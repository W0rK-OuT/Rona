return function (self,motion,playRate) 
local src = self.Entity.SpriteRendererComponent

src.StartFrameIndex = 0
src.EndFrameIndex = 2147483647
src.PlayRate = playRate
local ruid = _ShadowPartnerManager.motion[motion]
src.SpriteRUID = ruid

if motion == "Rope" or motion == "Ladder" then
	self:UpdateDir(true, false)
end
end