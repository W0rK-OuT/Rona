return function (self,name) 
for k, v in pairs(self.worldInfo) do
	local mapName = v[1]
	if mapName == name then
		return v[3]
	end
end
return nil
end