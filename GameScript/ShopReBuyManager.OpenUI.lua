return function (self) 
self:ClickItem(-1)

self.main:SetEnable(true)
_UIManager:Add(self.main)

self:UpdateUI()
end