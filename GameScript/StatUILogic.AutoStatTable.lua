return function (self,player,type) 
if player == nil then
	return nil
end
local info = player.PlayerStats
if info == nil then
	return nil
end
local totalPoint = info.ap
if totalPoint <= 0 then
	return nil
end
local statTable = {}

local jobType = _GameUtil:JobType(info.job)
if jobType == 0 then
	local calDex = math.min(totalPoint, info.level - info:TotalStat("dex"))
	if calDex > 0 then
		statTable["dex"] = calDex
		totalPoint = totalPoint - calDex
	end
	if totalPoint > 0 then
		statTable["str"] = totalPoint
	end
elseif jobType == 1 then
	local second
	if info.level <= 40 then
		second = info.level * 2
	else
		second = 80 + info.level - 40
	end
	local calSecond = math.min(totalPoint, second - info:TotalStat("dex"))
	if calSecond > 0 then
		statTable["dex"] = calSecond
		totalPoint = totalPoint - calSecond
	end
	if totalPoint > 0 then
		statTable["str"] = totalPoint
	end
elseif jobType == 2 then
	local calSecond = math.min(totalPoint, (info.level + 3) - info:TotalStat("luk"))
	if calSecond > 0 then
		statTable["luk"] = calSecond
		totalPoint = totalPoint - calSecond
	end
	if totalPoint > 0 then
		statTable["int"] = totalPoint
	end
elseif jobType == 3 then
	local second = info.level + 5
	local calSecond = math.min(totalPoint, second - info:TotalStat("str"))
	if calSecond > 0 then
		statTable["str"] = calSecond
		totalPoint = totalPoint - calSecond
	end
	if totalPoint > 0 then
		statTable["dex"] = totalPoint
	end
elseif jobType == 4 then
	local second
	if info.level <= 40 then
		second = info.level * 2
	else
		second = 80 + info.level - 40
	end
	local calSecond = math.min(totalPoint, second - info:TotalStat("dex"))
	if calSecond > 0 then
		statTable["dex"] = calSecond
		totalPoint = totalPoint - calSecond
	end
	if totalPoint > 0 then
		statTable["luk"] = totalPoint
	end
elseif jobType == 5 then
	if type == 0 then
		type = math.floor(info.job % 100 / 10)
	end
	if type == 1 then
		local second
		if info.level <= 20 then
			second = info.level * 2
		else
			second = 40 + info.level - 20
		end
		local calSecond = math.min(totalPoint, second - info:TotalStat("dex"))
		if calSecond > 0 then
			statTable["dex"] = calSecond
			totalPoint = totalPoint - calSecond
		end
		if totalPoint > 0 then
			statTable["str"] = totalPoint
		end
	elseif type == 2 then
		local calSecond = math.min(totalPoint, info.level - info:TotalStat("str"))
		if calSecond > 0 then
			statTable["str"] = calSecond
			totalPoint = totalPoint - calSecond
		end
		if totalPoint > 0 then
			statTable["dex"] = totalPoint
		end
	end
end
return statTable
end