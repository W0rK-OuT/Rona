return function (self) 
local back = self.main:GetChildByName("Back")
back.SpriteGUIRendererComponent.ImageRUID = ""
local grid = self.main:GetChildByName("Grid")
grid:SetEnable(false)
local exit = self.main:GetChildByName("ExitButton")
exit:SetEnable(false)

self.main:SetEnable(false)
_UIManager:Remove(self.main)
end