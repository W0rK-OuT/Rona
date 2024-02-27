return function (self) 
self.clickIndex = 0

self.settingMain:SetEnable(false)
self.Parent.Parent.ScrollLayoutGroupComponent:SetScrollNormalizedPosition(UITransformAxis.Vertical, 1)
self.Parent.Parent.ScrollLayoutGroupComponent:SetScrollNormalizedPosition(UITransformAxis.Horizontal, 1)
self:UpdateMobileImage()

self.sample:SetEnable(false)
self.main:SetEnable(true)
_UIManager:Add(self.main)
end