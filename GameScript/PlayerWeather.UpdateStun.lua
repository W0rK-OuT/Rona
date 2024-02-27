return function (self,stun) 
self.stun = stun
for k, v in pairs(_PlayerKeyLogic.dirKey) do
	if stun then
		_PlayerComponent.controller:RemoveActionKey(k)
		_RapidSkill:EndSkill()
	else
		_PlayerComponent.controller:SetActionKey(k, v)
	end
end
end