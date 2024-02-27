return function (self,tab,slot) 
self.tab = tab
self.slot = slot

self.input.Text = "1"
self.main:SetEnable(true)
_UIManager:Add(self.main)
if Environment:IsPCPlatform() then
	self.input:ActivateInputField()
end
end