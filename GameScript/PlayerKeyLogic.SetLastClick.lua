return function (self,arg1) 
if _UtilLogic:IsNilorEmptyString(arg1) then
	self.lastClick = ""
	self.light:SetEnable(false)
	return
end

self.lastClick = arg1
local str = string.sub(arg1, 3)

---@type Entity
local par
if _UtilLogic:Contains(arg1, "T-") then
	par = self.main:GetChildByName("Top")
else
	par = self.main:GetChildByName("Bot")
end
local find = par:GetChildByName(str)
if find == nil then
	self.lastClick = ""
	self.light:SetEnable(false)
	return
end

find:AttachChild(self.light)
local ui = self.light.UITransformComponent
ui.anchoredPosition.x = 0
ui.anchoredPosition.y = 0
self.light:SetEnable(true)
end