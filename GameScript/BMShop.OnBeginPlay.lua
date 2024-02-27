return function (self) 
if self:IsServer() then
	_WorldShopService:SetProcessPurchaseCallback(self.ProcessPurchase)
	if Environment:IsPublishedPlay() then
		self:AddBMItems()
	end
else
	self.buyAction = self.main:GetChildByName("Buy")
	self.buyAction:SetEnable(false)
	self.grid = self.main:GetChildByName("Grid")
	self.itemGrid = self.main:GetChildByName("ItemGrid")
	self.tabs = self.main:GetChildByName("Tabs")
	self.point = self.main:GetChildByName("Point").TextComponent
	self.totalPoint = self.main:GetChildByName("TotalPoint").TextComponent
	self.main:SetEnable(false)
	_UIManager:Remove(self.main)
end
end