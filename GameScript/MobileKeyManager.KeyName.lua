return function (self,buttonName) 
local nTable = _PlayerKeyLogic:BaseTable()
for k, v in pairs(nTable) do
	if v[1] == buttonName then
		return v[2]
	end
end
return "???"
end