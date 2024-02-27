return function (self,job) 
if job == 500 then
	self.clone:GetChildByName("AutoButton"):SetEnable(false)
	self.clone:GetChildByName("AutoButton1"):SetEnable(true)
	self.clone:GetChildByName("AutoButton2"):SetEnable(true)
else
	self.clone:GetChildByName("AutoButton"):SetEnable(true)
	self.clone:GetChildByName("AutoButton1"):SetEnable(false)
	self.clone:GetChildByName("AutoButton2"):SetEnable(false)
end
end