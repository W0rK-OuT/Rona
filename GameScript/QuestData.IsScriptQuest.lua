return function (self,questID,status) 
local data = self:GetData(questID)
if data == nil then
	return false
end
local check = data["check" .. status]
if check == nil then
	return false
end
return check[status == 0 and "startscript" or "endscript"] ~= nil
end