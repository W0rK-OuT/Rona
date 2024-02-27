return function (self,id) 
local sounds = self.sounds[id]
if sounds == nil then
	local tables = _Util:FindTable_Values("ReactorSound", "id", tostring(id))
	if tables == nil then
		sounds = {}
		self.sounds[id] = sounds
		return sounds
	end
	
	sounds = {}
	for _, v in pairs(tables) do
		local nState = tonumber(v["state"])
		local nRuid = v["ruid"]
		sounds[nState] = nRuid
	end
	self.sounds[id] = sounds
end
return sounds
end