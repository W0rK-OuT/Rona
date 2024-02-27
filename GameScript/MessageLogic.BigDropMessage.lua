return function (self,msg,size) 
_SoundService:PlaySound("28a57c34a0b042f6943e6c3048cb9ddc", 2)

local drop = self.bigDrop
local textCom = self.bigDropText.TextComponent
local height = textCom:GetPreferredHeight(msg, size - 20)

textCom.Text = msg
local sizeY = math.max(200, math.ceil(height) + 75)

local rect = drop.UITransformComponent.RectSize
rect.x = size
rect.y = math.min(750, sizeY)

local textRect = self.bigDropText.UITransformComponent.RectSize
textRect.x = size - 60
textRect.y = sizeY - 70

if sizeY > 750 then
	drop:GetChildByName("ExitButton2"):SetEnable(false)
	drop:GetChildByName("UIText"):SetEnable(true)
else
	drop:GetChildByName("ExitButton2"):SetEnable(true)
	drop:GetChildByName("UIText"):SetEnable(false)
end

_UIManager:Add(drop)
drop:SetEnable(true)
end