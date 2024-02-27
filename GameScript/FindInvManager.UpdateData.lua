return function (self,slot,invType,inv) 
local pInv = self.inv[slot]
if pInv == nil then
	self.inv[slot] = {}
	pInv = self.inv[slot]
end
pInv[invType] = inv

self:OpenUI()
end