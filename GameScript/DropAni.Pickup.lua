return function (self,isPet) 
if not isvalid(self.parent) then
	return false
end
local di = self.parent.DropItem
if di == nil then
	return false
end
if not di:CheckPickup(_UserService.LocalPlayer, isPet) then
	return false
end

_DropData:SetPickup(_UserService.LocalPlayer, self.parent, false)
return true
end