return function (self) 
local value = self.stats.jump
local buff = self.buff.jump
if self.buff.dashJump > 0 then
	buff = math.max(buff, self.buff.dashJump)
end
local jump = math.min(123, 100 + value + buff)
self.jump.Text = jump .. "%"

local calJump
local fieldLimit = _UserService.LocalPlayer.CurrentMap.MapInfo.fieldLimit
if _FieldLimit:Check(fieldLimit, _FieldLimit.MoveSkill) then
	calJump = 100
elseif _UserService.LocalPlayer.PlayerBuff.incTaming > 0 then
	calJump = 100
else
	calJump = jump
end
local swimPower = _PlayerWeather.swim and 5 or 1
_PlayerComponent.rigid.WalkJump = calJump / 100 / swimPower
end