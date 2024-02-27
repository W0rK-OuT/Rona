return function (self,isTime,index) 
---@type Entity
local summon = self.summons[index]
if summon ~= nil then
	if isvalid(summon) then
		local id = summon.SummonInfo.id
		if isTime then
			_MessageLogic:ChatMessage(5, _SkillData:GetName(id) .. "의 지속시간이 다 되어 사라집니다.")
		end
		local pos = summon.TransformComponent.WorldPosition
		local ruid = _SummonData:GetRUID(id, "die")
		if not _UtilLogic:IsNilorEmptyString(ruid) then
			_EffectService:PlayEffect(ruid, _UserService.LocalPlayer, pos, 0, Vector3.one)
		end
		summon:Destroy()
	end
	self.summons[index] = nil
end
end