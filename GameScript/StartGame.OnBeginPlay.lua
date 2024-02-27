return function (self) 
self.removeInfo = self.main:GetChildByName("Remove")
self.removeInfo:SetEnable(false)

local func = function()
end
_ResourceService:PreloadAsync({"4f2ab7513f71473bb6868be2e6d43be4"}, func)
end