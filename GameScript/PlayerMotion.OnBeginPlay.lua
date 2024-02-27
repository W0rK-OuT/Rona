return function (self) 
self.Entity.StateComponent:AddState("TAMING", MobEmpty)

if self.Entity ~= _UserService.LocalPlayer then
	local playerBuff = self.Entity.PlayerBuff
	if playerBuff.incShadow > 0 then
		self:UpdateValue(playerBuff.incShadow)
	end
    --if playerBuff.combo > 0 then
    --    _PlayerBuffLogic:UpdateCombo(self.Entity, playerBuff.combo)
    --end
end
end