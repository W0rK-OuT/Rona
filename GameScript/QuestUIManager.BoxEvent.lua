return function (self,type) 
if type == "Yes" then
	_QuestManager:GiveUpQuest(_UserService.LocalPlayer, self.lastQuest)
	self:SetQuest(0)
end
self:CloseYesNo()
end