return function (self,count) 
for idx = 1, count do
	local clone = self.tabGrid:GetChildByName("" .. idx)
	if clone == nil then
		clone = self.tabSample:Clone("" .. idx)
	end
	clone:GetChildByName("UIText").TextComponent.Text = "" .. idx
	clone:SetEnable(true)
end
self:UpdateTab()
end