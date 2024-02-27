return function (self) 
_KeyOperation.openShopAndNpc = true

self.clone:SetEnable(true)
_UIManager:Add(self.clone)

self:UpdateMeso(nil)
end