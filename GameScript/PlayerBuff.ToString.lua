return function (self,buffs) 
for k, v in pairs(buffs) do
	local id = k
	local start = v["start"] 
	local time = v["time"]
	local buff = v["buff"]
	log(id, start, time, buff)
end
end