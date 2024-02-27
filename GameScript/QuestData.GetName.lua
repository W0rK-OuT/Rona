return function (self,questID) 
local data = self:GetData(questID)
if data == nil then
	return ""
end
local info = data["info"]
if info == nil then
	return ""
end
return _GameUtil:ConvertString(info["name"], "")
end