return function (self,pName,value) 
local nTable = _UserService.LocalPlayer.PlayerSetting.petOption
nTable[pName] = value
self:Update(pName, value)
end