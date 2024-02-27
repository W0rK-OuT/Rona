return function (self,id) 
local idType = math.floor(id / 1000000)
local findSound = self.sound[idType]
if findSound == nil then
	findSound = {}
	self.sound[idType] = findSound
end

local sounds = findSound[id]
if sounds == nil then
	local soundTable = _Util:FindTable_Value("MobSound" .. idType, "id", tostring(id))
	if soundTable == nil then
		findSound[id] = {}
		return {}
	end
	local nTable = {}
	local str = soundTable["sound"]
	for k, v in pairs(_UtilLogic:Split(str, ",")) do
		local spl = _UtilLogic:Split(v, "=")
		local key = string.upper(spl[1])
		local value = spl[2]
		nTable[key] = value
	end
	findSound[id] = nTable
	return nTable
end
return sounds
end