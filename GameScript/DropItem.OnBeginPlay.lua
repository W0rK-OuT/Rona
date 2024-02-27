return function (self) 
if self.id == 0 and self.quantity == 0 then
	return
end
if self.questID > 0 then
	if _UserService.LocalPlayer.PlayerQuest:QuestStatus(self.questID) ~= 1 then
		return
	end
end

-- 맵에 올 때 코딩
local startPos = self.Entity.TransformComponent.WorldPosition:ToVector2()
if self.id > 0 then
	startPos.y -= 0.165
end
self:DropAnimation(self.id, self.quantity, startPos, nil, 0)
end