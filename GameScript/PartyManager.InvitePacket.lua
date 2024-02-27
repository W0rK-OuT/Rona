return function (self,leaderInfo) 
local name = leaderInfo["name"]
local level = leaderInfo["level"]
local job = leaderInfo["job"]
local partyIndex = leaderInfo["partyIndex"]

self:OpenAcceptInfo(name, level, job, partyIndex)
end