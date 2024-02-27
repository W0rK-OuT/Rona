return function (self,index) 
local item = self.keys["" .. index]
if item == nil then
	self.settingMain:SetEnable(false)
	return
end
self.clickIndex = index
self:UpdateOptionText()
end