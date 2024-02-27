return function (self,click) 
if _UtilLogic:IsNilorEmptyString(click) then
	self.lastClick = ""
	self.openBox:AttachChild(self.light)
	self.light:SetEnable(false)
	return
end

local find = self.openBox:GetChildByName("Grid"):GetChildByName(click)
if find == nil then
	self.lastClick = ""
	self.light:SetEnable(false)
else
	self.lastClick = click
	find:AttachChild(self.light)
	local anPos = self.light.UITransformComponent.anchoredPosition
	anPos.x = 0
	anPos.y = 0
	self.light:SetEnable(true)
end
end