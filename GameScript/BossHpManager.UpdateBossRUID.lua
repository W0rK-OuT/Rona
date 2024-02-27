return function (self,id) 
if id == -1 then
	self.bossRUID.ImageRUID = ""
else
	local ruid = self.ruid[id]
	if _UtilLogic:IsNilorEmptyString(ruid) then
		self.bossRUID.ImageRUID = ""
	else
		self.bossRUID.ImageRUID = ruid
	end
end
end