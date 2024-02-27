return function (self,reTable,id) 
local mob = _MonsterData:GetMonster(id)
local revive = mob["revive"]
if revive ~= nil then
	for _, v in pairs(revive) do
		self:revieveCheck(reTable, v)
	end
else
	reTable[id] = true
end
end