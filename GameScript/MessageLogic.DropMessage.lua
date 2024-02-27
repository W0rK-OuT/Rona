return function (self,msg) 
_SoundService:PlaySound("28a57c34a0b042f6943e6c3048cb9ddc", 2)

local drop = self.drop
local textCom = self.dropText.TextComponent
local height = textCom:GetPreferredHeight(msg, 380)

textCom.Text = msg
local sizeY = math.max(200, math.ceil(height) + 75)
drop.UITransformComponent.RectSize.y = math.min(750, sizeY)
self.dropText.UITransformComponent.RectSize.y = sizeY - 70
if sizeY > 750 then
	self.drop:GetChildByName("ExitButton2"):SetEnable(false)
	self.drop:GetChildByName("UIText"):SetEnable(true)
else
	self.drop:GetChildByName("ExitButton2"):SetEnable(true)
	self.drop:GetChildByName("UIText"):SetEnable(false)
end

_UIManager:Add(drop)
drop:SetEnable(true)
end