return function (self,id) 
local gender = math.floor(id % 10000 / 1000)
if gender < 2 then
	return gender
end
return -1
end