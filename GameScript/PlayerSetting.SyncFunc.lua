return function (self,nTable) 
for k, v in pairs(nTable) do
	if k == "costume" then
		self.costume = v
		_EquipmentLogic:UpdateEyes(v)
	elseif k == "petOption" then
		self.petOption = v
		_PetManager:StartPet()
		_PetOptionManager:UpdateAll()
	elseif k == "chatBans" then
		_ChatBanManager:UpdateAll(v)
	elseif k == "chatOption" then
		for kk, vv in pairs(v) do
			if kk == "size" then
				_ChatManager:SetSize(tonumber(vv))
			elseif kk == "pos" then
				_ChatManager:SetPos(tonumber(vv))
			elseif kk == "length" then
				_ChatManager:SetLength(tonumber(vv))
			end
		end
	end
end
end