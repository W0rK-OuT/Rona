return function (self,mobID) 
if mobID == 0 then
	self:UpdateItems(nil, nil)
	return
end
local info = self.dropInfos[mobID]
if info == nil then
	self:GetDropInfo(_UserService.LocalPlayer, mobID)
else
	self:UpdateItems(info, _MonsterData:GetMonster(mobID))
end
end