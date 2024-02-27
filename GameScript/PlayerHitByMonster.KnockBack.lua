return function (self,powerX,powerY,dir,force,damageType) 
local player = _UserService.LocalPlayer
local curAnim = player.StateComponent.CurrentStateName
local curDirection = self:PlayerDir()
local originPowerX = powerX
local originPowerY = powerY

if force then
	curDirection = 0
end
if curDirection == dir or curDirection == 0 then
	powerX = originPowerX
else
	powerX = originPowerX * 0.5
end

if curAnim == "FALL" or curAnim == "JUMP" then
	if curDirection == dir then
		powerX = originPowerX * 0.5
	else
		powerX = originPowerX
	end
	powerY = 0
else
	powerY = originPowerY
end
if curAnim == "SIT" then
	_PlayerComponent.state:ChangeState("IDLE")
elseif curAnim == "CLIMB" or curAnim == "LADDER" then
	powerX = originPowerX
	powerY = originPowerY
	if _PlayerComponent.move.IsClimbPaused or damageType > 0 then
		if _PlayerComponent.controller.Enable then
			_PlayerComponent.controller.Enable = false
			local func = function()
				_PlayerComponent.controller.Enable = true
			end
			_TimerService:SetTimerOnce(func, 0.2)
		end
		_PlayerComponent.state:ChangeState("FALL")
	end
	--self:DetachRope()
end

if _SkillMove.wings and _PlayerComponent.rigid.Gravity < 1 then
	powerX = 1.5
	powerY = 2
	_PlayerComponent:SeForce(Vector2(dir == -1 and -powerX or powerX, powerY))
	return
end

if dir == -1 then
	_PlayerComponent:AdForce(Vector2(-powerX, powerY))
else
	_PlayerComponent:AdForce(Vector2(powerX, powerY))
end
end