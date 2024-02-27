return function (self) 
if not _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
	self:CloseUI()
	return
end

local grid = self.main:GetChildByName("Grid")
local itemEntity = self.main:GetChildByName("Item")
itemEntity:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = "cc3457b8e97b3e14f9d5c39ccdd640bf"
self.main:GetChildByName("Name").TextComponent.Text = ""

for k, v in pairs(grid.Children) do
	v:GetChildByName("Op").TextComponent.Text = ""
end

self.main:SetEnable(true)
_UIManager:Add(self.main)
end