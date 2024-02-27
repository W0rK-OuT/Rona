return function (self,name,level,job,partyIndex) 
_SoundService:PlaySound("be1476f72ff94886943d65051e91a32a", 1)
self.acceptPartyIndex = partyIndex
local msg = "Lv. " .. level .. " " .. _GameUtil:JobName(job) .. "\n'" .. name .. "'님의\n파티 초대입니다."
self.acceptBox:GetChildByName("Text").TextComponent.Text = msg
self.acceptBox:SetEnable(true)
_UIManager:Add(self.acceptBox)
end