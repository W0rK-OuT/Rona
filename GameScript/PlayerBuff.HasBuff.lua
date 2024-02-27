return function (self,key) 
for k, v in pairs(self.buffs) do
	local myBuffs = v["buff"]
	if myBuffs == nil then
		continue
	end
	for buffKey, buffValue in pairs(myBuffs) do
		if buffKey == key then
			return buffValue
		end
	end
end
return -1
end