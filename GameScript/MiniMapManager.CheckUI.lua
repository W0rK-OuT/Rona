return function (self) 
if not self.init then
	self.main:SetEnable(false)
	return
end

if self.main.Enable then
	self.main:SetEnable(false)
	self.first = false
else
	self.main:SetEnable(true)
	self.first = true
end
end