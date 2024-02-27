return function (self,isLeft,name) 
local items = self.items
local gender = items["gender"]
local len
local idx
if name == "gender" then
	len = 2
	idx = gender
	items["top"] = 1
	items["bot"] = 1
	items["shoes"] = 1
	items["weapon"] = 1
else
	local aaa = self:CharInfo(gender)
	local findTable = aaa[name]
	if findTable == nil then
		return
	end
	len = #findTable
	idx = items[name]
	if idx == nil then
		return
	end
end
idx += isLeft and -1 or 1
if idx <= 0 then
	idx = len
end
if idx > len then
	idx = 1
end
self.items[name] = idx
self:UpdateUI()
end