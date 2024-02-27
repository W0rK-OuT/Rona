return function (self) 
local value = self.stats.speed
local buff = self.buff.speed
local slow = self.buff.slow
if self.buff.dashSpeed > 0 then
	buff = math.max(buff, self.buff.dashSpeed)
end
local speed = math.min(140, 100 + value + buff)
if slow > 0 then
	speed = slow
end
self.speed.Text = speed .. "%"

local calSpeed
local fieldLimit = _UserService.LocalPlayer.CurrentMap.MapInfo.fieldLimit
if _FieldLimit:Check(fieldLimit, _FieldLimit.MoveSkill) then
	calSpeed = 100
elseif _UserService.LocalPlayer.PlayerBuff.incTaming > 0 then
	calSpeed = 100
else
	calSpeed = speed
end
_PlayerComponent.move.InputSpeed = calSpeed / 100
_UserService.LocalPlayer.AvatarStateAnimationComponent.StateToAvatarBodyActionSheet["MOVE"].PlayRate = calSpeed / 100

local nowState = _PlayerComponent.state.CurrentStateName
if nowState == "MOVE" then
	_PlayerComponent.state:ChangeState("IDLE")
	_PlayerComponent.state:ChangeState("MOVE")
end
end