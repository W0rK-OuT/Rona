return function (self) 
self.cloneItem = self.itemPC:Clone("ItemInfo")
self.cloneEquip = self.equipPC:Clone("EquipInfo")
self.sizeX = self.cloneEquip.UITransformComponent.RectSize.x
self.sizeY = self.cloneEquip.UITransformComponent.RectSize.y
self:CloseUI()
end