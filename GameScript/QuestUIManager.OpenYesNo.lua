return function (self) 
if self.lastQuest == 0 then
	return
end
_SoundService:PlaySound("28a57c34a0b042f6943e6c3048cb9ddc", 1)
self.acceptBox:SetEnable(true)
_UIManager:Add(self.acceptBox)
end