return function (self) 
--if self.isOne then
--    self:Action(1)
--    return
--end

self.countBox:SetEnable(true)
_UIManager:Add(self.countBox)

local textInput = self.countBox:GetChildByName("Input").TextInputComponent
if self.isOne then
	textInput.Text = "1"
else
	textInput.Text = "" .. self.quantity
end
textInput:ActivateInputField()
end