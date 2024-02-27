return function (self,job,skillID) 
local job1 = math.floor(job / 100) * 100
local job2 = job1 + job % 100 - job % 10
local calcID = math.floor(skillID / 10000)
if calcID == job1 or (calcID >= job2 and calcID <= job) then
	return true
end
local begginer = math.floor(job / 1000) * 1000
if calcID == begginer then
	return true
end
return false
end