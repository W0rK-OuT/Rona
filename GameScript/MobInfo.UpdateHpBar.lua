return function (self,hp,maxHp) 
if self.clientTColor == 0 and self.clientBColor == 0 then
	if self.hpBar ~= nil then
		local per = math.floor(hp / maxHp * 100) / 100
		if per < 0 then
			per = 0
		elseif per > 1 then
			per = 1
		end
		local level = _UserService.LocalPlayer.PlayerStats.level
		if level <= self.level - 20 then
			self.Entity.NameTagComponent.FontColor = Color(187 / 255, 51 / 255, 0)
		elseif level >= self.level + 20 then
			self.Entity.NameTagComponent.FontColor = Color(255 / 255, 255 / 255, 34 / 255)
		else
			self.Entity.NameTagComponent.FontColor = Color.white
		end
		
		self.black.TransformComponent.Scale.x = 1 - per
		self.hpBar:SetEnable(true)
		self.Entity.NameTagComponent.Enable = true
		
		local timer = 5
		if hp <= 0 then
			timer = 1
		end
		
		_TimerService:ClearTimer(self._T.timer)
		local func = function()
			if isvalid(self.hpBar) then
				self.hpBar:SetEnable(false)
				self.Entity.NameTagComponent.Enable = false
			end
		end
		self._T.timer = _TimerService:SetTimerOnce(func, timer)
	end
else
	_BossHpManager:UpdateHp(self.id, hp, maxHp, self.clientTColor, self.clientBColor)
end
end