return function (self,questID) 
if questID == nil then
	return
end
self.lastQuest = questID
if questID == 0 then
	self:UpdateDesc(false)
	self:CloseYesNo()
else
	self:UpdateDesc(true)
end
end