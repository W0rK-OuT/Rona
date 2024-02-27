return function (self) 
self.main_pc:SetEnable(false)
if Environment:IsMobilePlatform() then
	self.main = self.main_mobile
else
	self.main = self.main_pc
end
--self.main.UITransformComponent.UIScale = Vector3(1.5, 1.5, 1.5)
self.main:SetEnable(false)

self.itemGrid = self.main:GetChildByName("ItemList"):GetChildByName("ItemGrid")
self.itemGrid:SetEnable(false)

self.main:SetEnable(false)
_UIManager:Remove(self.main)

self.posUserMain:SetEnable(false)
_UIManager:Remove(self.posUserMain)
end