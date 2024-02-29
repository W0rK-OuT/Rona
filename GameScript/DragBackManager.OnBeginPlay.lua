return function (self) 
self.main:SetEnable(false)
if Environment:IsMakerPlay() then
	self.main.SpriteGUIRendererComponent.ImageRUID = ""
end
self.dragItem:SetEnable(false)
self.name = self.dragItem:GetChildByName("Name").TextComponent
self.gui = self.dragItem:GetChildByName("Gui").SpriteGUIRendererComponent
end