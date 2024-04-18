return function (self) 
local nextTab = self.lastTab + 1
local tab = self.tabs:GetChildByName("Tab" .. nextTab)
if tab == nil or not tab.Enable then
	nextTab = 0
end
self:SwitchTab(nextTab)
end