return function (self,id,targetName) 
_SoundService:PlaySound("be1476f72ff94886943d65051e91a32a", 1)
self.main:SetEnable(true)
self.id = id
self.main:GetChildByName("Text").TextComponent.Text = "'" .. targetName .. "'님의\n교환신청입니다"
_UIManager:Add(self.main)
end