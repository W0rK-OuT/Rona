return function (self) 
self.main:SetEnable(false)
if Environment:IsMakerPlay() then
	self.main.SpriteGUIRendererComponent.ImageRUID = ""
end
self.dragItem:SetEnable(false)
end