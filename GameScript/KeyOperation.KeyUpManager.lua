return function (self,anyKey) 
if self.keyDonwID > 0 or self.rapidID > 0 then
	local value = _PlayerKeyLogic.holdKey[anyKey]
	if value ~= nil then
		if _UtilLogic:Contains(value, "S") then
			local id = tonumber(string.sub(value, 3))
			if id > 0 then
				if id == self.keyDonwID then
					self:EndKeyDownSkill(id)
				elseif id == self.rapidID then
					 self:EndRapidSkill(id)
				end
			end
		end
	end
end
end