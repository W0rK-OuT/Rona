return function (self,job) 
if math.floor(job % 1000 / 100) == 0 then
	return true
end
return false
end