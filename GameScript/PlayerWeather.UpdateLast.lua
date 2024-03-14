return function (self) 
local keyStop = self:IsKeyStop()
for k, v in pairs(_PlayerKeyLogic.dirKey) do
	if keyStop then
		_PlayerComponent.controller:RemoveActionKey(k)
		_RapidSkill:EndSkill()
	else
		_PlayerComponent.controller:SetActionKey(k, v)
	end
end
end