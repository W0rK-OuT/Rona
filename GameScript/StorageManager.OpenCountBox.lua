return function (self,boxTab,boxSlot,count) 
self.boxTab = boxTab
self.boxSlot = boxSlot

self.countBox:SetEnable(true)
local input = self.countBox:GetChildByName("Input").TextInputComponent
input.Text = "" .. count
input:ActivateInputField()

_UIManager:Add(self.countBox)
end