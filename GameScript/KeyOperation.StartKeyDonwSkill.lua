return function (self,isRapid,id) 
if not _PlayerComponent.rigid:IsOnGround() then
	return
end
local darkSight = _UserService.LocalPlayer.PlayerBuff.darkSight
if darkSight > 0 then
	return
end

local ps = _UserService.LocalPlayer.PlayerSkill
local now = _UtilLogic.ServerElapsedSeconds
if not ps:CheckCoolTime(id, now) then
	return
end
if not ps:CheckHitCoolTime(id, now) then
	return
end
if isRapid then
	self.rapidID = id
	_RapidSkill:StartSkill(id)
else
	self.keyDonwID = id
	_Gagebar:StartBar(id)
end
end