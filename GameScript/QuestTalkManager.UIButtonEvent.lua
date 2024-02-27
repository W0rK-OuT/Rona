return function (self,buttonName) 
if buttonName == "Yes" then
	self.status = 0
	self.curState = "yes"
	if _QuestManager:CheckInvMsg(_UserService.LocalPlayer, self.questID, 0, true) then
		_QuestManager:StartQuest(_UserService.LocalPlayer, self.questID, self.npcEntity)
		self:QuestTalkMore(1, -1)
	else
		self:DisposeQuest()
	end
elseif buttonName == "No" then
	self.status = 0
	self.curState = "no"
	self:QuestTalkMore(1, -1)
end
end