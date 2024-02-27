return function (self) 
self.pc:SetEnable(false)
self.clone = self.pc:Clone(self.entityName)
self.init = true

if Environment:IsMobilePlatform() then
	self.clone.UITransformComponent.UIScale = Vector3(1.4, 1.4, 1.4)
end

self.pcBuy:SetEnable(false)
self.buyClone = self.pcBuy:Clone(self.buyEntityName)
self:CloseBuy()

self.pcSell:SetEnable(false)
self.sellClone = self.pcSell:Clone(self.sellEntityName)
self:CloseSell()

self.pcRecharge:SetEnable(false)
self.rechargeClone = self.pcRecharge:Clone(self.rechargeEntityName)
self:CloseRecharge()

self.meso = self.clone:GetChildByName("RightTop"):GetChildByName("Meso"):GetChildByName("MesoBar"):GetChildByName("Text").TextComponent
self.clone:GetChildByName("LeftBotton"):GetChildByName("Sample"):Destroy()
self.invGrid = self.clone:GetChildByName("RightBotton"):GetChildByName("InvGrid")
self.invGrid:GetChildByName("Sample"):Destroy()

self:SwitchTab(1)

--self.clone.UITransformComponent.WorldPosition = self.pc.UITransformComponent.WorldPosition
self:CloseUI()
end