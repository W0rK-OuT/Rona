return function (self,player,item) 
local stats = player.PlayerStats

local itemGender = item["gender"]
if itemGender ~= nil then
	local myGender = stats.gender
	if itemGender == 0 or itemGender == 1 then
		if itemGender ~= myGender then
			return false
		end
	end
end

local itemJob = item["job"]
if itemJob ~= nil then
	local myJobType = math.floor(stats.job / 100)
	if 2^myJobType & itemJob == 0 then
		return false
	end
end

return true
end