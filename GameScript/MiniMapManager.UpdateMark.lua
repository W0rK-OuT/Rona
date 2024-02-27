return function (self,markName) 
local mark = _MapData:GetMark(markName)
if mark == nil then
	self.main:GetChildByName("Icon"):SetEnable(false)
	self.main:GetChildByName("Name").UITransformComponent.anchoredPosition.x = 10
else
	local icon = self.main:GetChildByName("Icon")
	icon:SetEnable(true)
	icon.SpriteGUIRendererComponent.ImageRUID = mark
	self.main:GetChildByName("Name").UITransformComponent.anchoredPosition.x = 100
end
end