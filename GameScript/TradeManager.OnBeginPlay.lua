return function (self) 
self.main:SetEnable(false)
self.main = self.main:Clone(self.entityName)
self.main:SetEnable(false)
_UIManager:Remove(self.main)

local botLeft = self.main:GetChildByName("BotLeft")

local pItems = botLeft:GetChildByName("PartnerItems")
local mItems = botLeft:GetChildByName("PlayerItems")
local pSample = pItems:GetChildByName("Sample")
for idx = 1, 9 do
	pSample:Clone("" .. idx)
	_SpawnService:SpawnByEntity(pSample, "" .. idx, Vector3.zero, mItems)
end
pSample:Destroy()

self.textGrid = self.main:GetChildByName("Right"):GetChildByName("Grid")
self.textSample = self.main:GetChildByName("Right"):GetChildByName("Sample")
self.textSample:SetEnable(false)

self:UpdateName(_UserService.LocalPlayer.PlayerComponent.Nickname)
end