return function (self,text) 
local textCom = self.text.TextComponent
local x = textCom:GetPreferredWidth(text)
local y = textCom:GetPreferredHeight(text, x)
local rect = self.main.UITransformComponent.RectSize
rect.x = x + 10
rect.y = y
textCom.Text = text

self.main:SetEnable(true)
_UIManager:Add(self.main)

_DragManager:SetCalcPos(self.main, Vector2(20, -10))

_ItemInfoLogic:CloseUI()
_SkillInfoLogic:CloseUI()
--_BaseTextManager:CloseUI()
end