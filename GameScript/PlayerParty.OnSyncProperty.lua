return function (self,name,value) 
if name == "partyIndex" then
	if self.Entity == _UserService.LocalPlayer then
		for k, v in pairs(_UserService.UserEntities) do
			local stat = v.PlayerStats
			self:UpdatePartyHpBar(stat.hp, stat.currentHp, v)
		end
	else
		local stat = self.Entity.PlayerStats
		_UserService.LocalPlayer.PlayerParty:UpdatePartyHpBar(stat.hp, stat.currentHp, self.Entity)
	end
	_MiniMapManager:UpdateParty()
end
end