return function (self,id) 
local nID = math.floor(id / 10000)
if nID == 145 or nID == 146 or nID == 147 or nID == 149 then
	return true
end
return false
end