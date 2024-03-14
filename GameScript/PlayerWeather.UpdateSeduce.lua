return function (self,seduce) 
self.seduce = seduce
self:UpdateLast()

local player = _UserService.LocalPlayer

_TimerService:ClearTimer(self._T.seduceTimer)
player.MovementComponent:Stop()

if seduce > 0 then
	local func = function()
		if seduce == 4 then
			player.PlayerControllerComponent.Enable = true
			player.PlayerControllerComponent:ActionCrouch()
		else
			local moveX = 0
			local jump = false
			if seduce == 1 or seduce == 6 then
				moveX = -1
			elseif seduce == 2 or seduce == 7 then
				moveX = 1
			end
			if seduce == 3 or seduce == 6 or seduce == 7 then
				jump = true
			end
			if moveX ~= 0 then
				player.PlayerControllerComponent.Enable = false
				player.MovementComponent:MoveToDirection(Vector2(moveX, 0), 0.1)
				
                --if not jump then
                --    if player.StateComponent.CurrentStateName == "IDLE" then
                --        player.StateComponent:ChangeState("MOVE")
                --    end
                --end
			end
			if jump then
				if player.MovementComponent:Jump() then
					_SoundService:PlaySound("d881a73a0700404a91bcf753474274c3", 1)
				end
			end
		end
	end
	self._T.seduceTimer = _TimerService:SetTimerRepeat(func, 0, 0.1)
else
	player.PlayerControllerComponent.Enable = true
end	
end