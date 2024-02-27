return function (self,jobType,itemJob) 
if itemJob == -1 then
	return jobType == 0
elseif itemJob == 0 then
	return true
end
local cal = math.floor(math.pow(2, jobType - 1))
local bit = itemJob & cal
return bit > 0
end