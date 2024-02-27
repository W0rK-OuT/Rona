return function (self,buttonName) 
if buttonName == "Yes" then
	local statTable = self.mobileStats
	local str = statTable["str"]
	local dex = statTable["dex"]
	local int = statTable["int"]
	local luk = statTable["luk"]
	local total = str + dex + int + luk
	self:CloseMobileStat()
	if str < 0 or dex < 0 or int < 0 or luk < 0 or total <= 0 then
		return
	end
	if total > _UserService.LocalPlayer.PlayerStats.ap then
		return
	end
	self:MobileAutoStatDistribution(_UserService.LocalPlayer, statTable)
	return
elseif buttonName == "No" then
	self:CloseMobileStat()
	return
elseif buttonName == "MobileStat" then
	self:OpenMobileStat()
	return
end
local split = _UtilLogic:Split(buttonName, "_")
local stat = split[1]
local statType = split[2]
if stat == "str" or stat == "dex" or stat == "int" or stat == "luk" then
	if statType == "p" then
		local ap = self.mobileStats["ap"]
		if ap > 0 then
			self.mobileStats["ap"] = ap - 1
			self.mobileStats[stat] = self.mobileStats[stat] + 1
			self:UpdateMobileStat()
		end
	elseif statType == "m" then
		local st = self.mobileStats[stat]
		if st > 0 then
			self.mobileStats["ap"] = self.mobileStats["ap"] + 1
			self.mobileStats[stat] = st - 1
			self:UpdateMobileStat()
		end
	elseif statType == "a" then
		local ap = self.mobileStats["ap"]
		if ap > 0 then
			self.mobileStats["ap"] = 0
			self.mobileStats[stat] = self.mobileStats[stat] + ap
			self:UpdateMobileStat()
		end
	elseif statType == "x" then
		local st = self.mobileStats[stat]
		if st > 0 then
			self.mobileStats["ap"] = self.mobileStats["ap"] + st
			self.mobileStats[stat] = 0
			self:UpdateMobileStat()
		end
	end
end
end