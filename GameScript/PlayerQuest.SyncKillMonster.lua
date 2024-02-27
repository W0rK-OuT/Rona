return function (self,questID,monsterID,index,count,maxCount) 
local mobs = self.mobs["" .. questID]
if mobs == nil then
	mobs = {}
	self.mobs["" .. questID] = mobs
end
mobs["" .. index] = count

_MessageLogic:TopMessage(4, _MonsterData:GetMonsterName(monsterID) .. " " .. count .. " / " .. maxCount)

if count >= maxCount then
	_QuestManager:QuestUpdateValue()
end
end