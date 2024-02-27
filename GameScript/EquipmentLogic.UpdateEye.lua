return function (self,isEnd) 
local eye = self.main:GetChildByName("Eye")
if isEnd == nil then
	eye:SetEnable(not eye.Enable)
elseif isEnd then
	eye:SetEnable(false)
else
	eye:SetEnable(true)
end

local eyeButton = self.main:GetChildByName("EyeButton")
if eye.Enable then
	eyeButton.SpriteGUIRendererComponent:ChangeMaterial("material://8e34ae89-6f30-4845-9b1f-c1832328ad2b")
else
	eyeButton.SpriteGUIRendererComponent:ChangeMaterial("material://98eda30f-57d2-4ec7-8585-58533fcd7bb7")
end
end