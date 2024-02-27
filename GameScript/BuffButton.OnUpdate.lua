return function (self,delta) 
if self.buffTime > 0 then
	self.buffTime -= delta
	if self.buffTime <= 0 then
		self.buffTime = 0
	end
end
local lastNum = self.num
self.num = math.floor(self.buffTime)
if lastNum ~= self.num then
	self.text.Text = "" .. (self.num + 1)
	
    local per = (self.startTime - self.buffTime) / self.startTime
	if per > 1 then
		per = 1
	elseif per < 0 then
		per = 0
	end
	self.cool.FillAmount = per
end
end