return function (self,arg1) 
if _Util:IsTableEmpty(arg1) then
	arg1 = self:DefaltSetting()
end
self.keys = arg1
if self.main.Enable then
	self:UpdateMobileImage()
end
self:UpdateButtons()
end