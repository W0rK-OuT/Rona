return function (self,questID,key,value) 
local updateInfo = self.updateInfo["" .. questID]
if updateInfo == nil then
	updateInfo = {}
end

updateInfo[key] = value
self.updateInfo["" .. questID] = updateInfo
end