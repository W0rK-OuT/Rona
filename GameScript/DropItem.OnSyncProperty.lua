return function (self,name,value) 
if name == "questID" then
	if self.questID > 0 and _UserService.LocalPlayer.PlayerQuest:QuestStatus(self.questID) ~= 1 then
		self.Entity:SetEnable(false)
        --if isvalid(self.child) then
        --    self.child:SetVisible(false)
        --end
	else
		self.Entity:SetEnable(true)
        --if isvalid(self.child) then
        --    self.child:SetVisible(true)
        --end
	end
end
end