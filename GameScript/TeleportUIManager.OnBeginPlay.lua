return function (self) 
self.main:SetEnable(false)
_UIManager:Remove(self.main)

local sample = self.main:GetChildByName("MapGrid"):GetChildByName("Sample")
sample:SetEnable(false)
self.sample = sample

self.charInfo = self.main:GetChildByName("CharList")

for idx = 1, self.maxValue do
    local clone = self.main:GetChildByName("" .. idx)
    if clone == nil then
        clone = sample:Clone("" .. idx)
    end
end

self.yesNoBox = _YesNoBoxManager.main:Clone(self.teleYesNoName)
self.yesNoBox:SetEnable(false)
_UIManager:Remove(self.yesNoBox)
end