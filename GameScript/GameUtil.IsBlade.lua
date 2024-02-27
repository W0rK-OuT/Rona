return function (self,id) 
local nID = math.floor(id / 10000)
if nID == 134 then
	return true
end
return false
end