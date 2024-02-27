return function (self) 
local player = _UserService.LocalPlayer
local mapInfo = player.CurrentMap.MapInfo

local fs = 1
local swim = false

if mapInfo ~= nil then
	fs = mapInfo.fs
	swim = mapInfo.swim
end

self:UpdateSnow(fs)
self:UpdateSwim(swim)

local fieldLimit = _UserService.LocalPlayer.CurrentMap.MapInfo.fieldLimit
self.downJump = not _FieldLimit:Check(fieldLimit, _FieldLimit.DownJumpLimit)

_StatUILogic:UpdateSpeed()
_StatUILogic:UpdateJump()
end