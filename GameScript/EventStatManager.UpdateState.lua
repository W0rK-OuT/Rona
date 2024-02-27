return function (self,state) 
if state then
	self.hpBar:SetEnable(false)
	self.loveBar:SetEnable(true)
else
	self.hpBar:SetEnable(true)
	self.loveBar:SetEnable(false)
end
end