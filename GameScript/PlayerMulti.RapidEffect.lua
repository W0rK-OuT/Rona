return function (self,isLeft,id,isStart) 
local player = self.Entity
if not isvalid(player) then
	return
end

if player ~= _UserService.LocalPlayer then
	if isStart then
		local motion = _RapidSkill:Motion(id)
		local index = _RapidSkill:Index(id)
		local event = ActionStateChangedEvent(motion, motion, 1, SpriteAnimClipPlayType.Loop, index, index)
		player.AvatarRendererComponent:GetBodyEntity():SendEvent(event)
	else
		local event = ActionStateChangedEvent("stand1", "stand1", 10, SpriteAnimClipPlayType.Onetime, 0, 0)
		player.AvatarRendererComponent:GetBodyEntity():SendEvent(event)
	end
end

local rapidEffect = player:GetChildByName("RapidEffect")
if rapidEffect == nil then
	rapidEffect = _SpawnService:SpawnByModelId("model://3f9b4ce2-23fa-4e8b-b404-e7d4e6ef935a", "RapidEffect", Vector3(0, 0, 0), player)
end
rapidEffect.SpriteRendererComponent.SortingLayer = player.AvatarRendererComponent.SortingLayer
rapidEffect.SpriteRendererComponent.OrderInLayer = player.AvatarRendererComponent.OrderInLayer

rapidEffect.TransformComponent.Scale.x = isLeft and 1 or -1
if id == 5221004 then
	rapidEffect.RapidInfo.ruid1 = "c35ed000fcf84fb9bce9bb62a1ec7b3a"
	rapidEffect.RapidInfo.ruid2 = "19f587e6154b45d093ec1fab9d2ba383"
	rapidEffect.RapidInfo.ruid2zero = "023cbae01e004a86a8dc01a4987f7285"
	rapidEffect.RapidInfo.ruid3 = "c0c72d97c80e468ab13214aee1a9d7b1"
	
	rapidEffect.RapidInfo.ruid1z = -1
	rapidEffect.RapidInfo.ruid2z = -1
else
	rapidEffect.RapidInfo.ruid1 = "531bdd5d3bcb4cd592f6aeb97086bba0"
	rapidEffect.RapidInfo.ruid2 = "1980620bb2e041959e72dd44fdb93609"
	rapidEffect.RapidInfo.ruid2zero = ""
	rapidEffect.RapidInfo.ruid3 = "e4ab452f92c445eabed455157c587900"
	
	rapidEffect.RapidInfo.ruid1z = 0
	rapidEffect.RapidInfo.ruid2z = 0
end
rapidEffect.RapidInfo:Start(isStart)
end