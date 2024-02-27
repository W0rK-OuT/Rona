return function (self,weapon,motion) 
local weaponType = self.weaponTable[weapon]
if weaponType == nil then
	return nil
end
return weaponType[motion]
end