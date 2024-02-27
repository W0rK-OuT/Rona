return function (self,delta) 
local total = self.endTime - self.startTime
if total > 0 then
	self.now += delta
	local per = (self.endTime - self.now) / total
	if self.lastPer == per then
		return
	end
	if per > 1 then
		per = 1
	elseif per < 0 then
		per = 0
	end
	self.lastPer = per
	self.Entity.SpriteGUIRendererComponent.FillAmount = per
end
end