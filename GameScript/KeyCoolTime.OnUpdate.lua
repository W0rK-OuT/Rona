return function (self,delta) 
local total = self.endTime - self.startTime
if total > 0 then
	self.now += delta
	local calTime = self.endTime - self.now
	
	if calTime <= 0 then
		self:Close(false)
		self.Enable = false
		return
	end

	local sec = tostring(math.floor(calTime))
	if self.text.Text ~= sec then
		self.text.Text = sec
	end

	local per = calTime / total
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