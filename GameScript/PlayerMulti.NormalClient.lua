return function (self,actionName,playRate,attDel,masteryEff) 
local player = self.Entity
if not isvalid(player) then
	return
end
local isTaming = player.PlayerBuff.incTaming > 0
if isTaming then
	_TamingManager:UpdateMotion(player, actionName)
end
if player ~= _UserService.LocalPlayer then
	player.PlayerMotion.attState = actionName
	
	local event = ActionStateChangedEvent(actionName, actionName, playRate, SpriteAnimClipPlayType.Onetime)
	player.AvatarRendererComponent:GetBodyEntity():SendEvent(event)
	
	local delFunc = function()
		if isvalid(player) then
			player.PlayerMotion.attState = ""
		end
	end
	_TimerService:SetTimerOnce(delFunc, attDel / 1000)
end

local ruid = _WeaponEffect:GetEffect(player.PlayerStats.weaponName, actionName)
if _UtilLogic:IsNilorEmptyString(ruid) then
	return
end

if masteryEff then
	local del = function()
		local spawn = _SpawnService:SpawnByModelId("model://490551bb-592d-4da4-af8c-2ed032547d57", "NAE", Vector3.zero, player)
		spawn.TransformComponent.Scale.x = -player.PlayerControllerComponent.LookDirectionX
		spawn.SpriteRendererComponent.SpriteRUID = ruid
	end
	_TimerService:SetTimerOnce(del, (300 / playRate) / 1000)
end
end