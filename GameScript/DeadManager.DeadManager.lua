return function (self) 
local player = _UserService.LocalPlayer
local state = player.StateComponent
if player.PlayerStats:IsActing() then
	if state.CurrentStateName == "DEAD" then
		state:ChangeState("IDLE")
	end
	if self.main.Enable then
		self:CloseUI()
	end
else
	_PlayerComponent:SetState(true, true)
	state:ChangeState("DEAD")
	if not _PlayerComponent.rigid:IsOnGround() then
		local pos = _PlayerComponent.trans.WorldPosition:ToVector2()
		local fh = player.CurrentMap.FootholdComponent:Raycast(pos, Vector2.down, 999)
		if fh ~= nil then
			_PlayerComponent.rigid:SetPosition(Vector2(pos.x, fh:GetYByX(pos.x)))
		end
	end
	_SoundService:PlaySound("8727e134756141c58bf2f525a1598eee", 1) -- DEAD 사망
	local delay = function()
		if player.PlayerStats:IsActing() then
			return
		end
		self:OpenUI()
	end
	_TimerService:SetTimerOnce(delay, 3)
end
end