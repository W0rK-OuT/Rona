return function (self,id) 
local hitBox = self.monsterHitBox[id]
if hitBox ~= nil then
	return hitBox
end

hitBox = _Util:FindTable_Value("MonsterHitBox", "id", tostring(id))
self.monsterHitBox[id] = hitBox
return hitBox
end