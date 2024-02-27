return function (self,delta) 
if self.rotate then
    if not self.start then
        if self.trans.ZRotation > 0 and self.trans.ZRotation < 330 then
            self.trans:Rotate(24)
        else
            self.trans.ZRotation = 0
            self.rotate = false
        end
    else
        self.trans:Rotate(24)
    end
end

if not self.start then
    return
end

local worldPos = self.trans.WorldPosition
if worldPos.y >= self.endPos.y - 0.6 then
	self.vi += delta * self.speed
	if self.vi >= 7 then
	    self.vi = 7
	end
end

worldPos.y -= self.vi * 0.01
if self.vi >= 0 and worldPos.y <= self.endPos.y then
    worldPos.y = self.endPos.y
    self.start = false
    self:StartTweenLine()
end
end