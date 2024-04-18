return function (self) 
if self.name == "exp" then
	if isvalid(_UserService.LocalPlayer) then
		local stat = _UserService.LocalPlayer.PlayerStats
		local lv = stat.level
		local exp = stat.exp
		_BaseTextManager:OpenUI("EXP : " .. exp .. " / " .. _GameUtil:NeedExp(lv))
	end
elseif self.name == "miniNpc" then
	local name = _NpcData:NpcInfo(self.code)["name"]
	if name ~= nil then
		_BaseTextManager:OpenUI(name)
	end
end
end