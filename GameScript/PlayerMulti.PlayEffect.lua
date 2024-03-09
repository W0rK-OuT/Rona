return function (self,effect,rotate,scale,z,speed) 
local player = self.Entity
if isvalid(player) then
	local avatar =  player.AvatarRendererComponent
	local options = {}
	options["FlipX"] = player.PlayerControllerComponent.LookDirectionX > 0
	options["SortingLayer"] = avatar.SortingLayer
	options["OrderInLayer"] = avatar.OrderInLayer-- + z
	options["PlayRate"] = speed
	_EffectService:PlayEffect(effect, player, player.TransformComponent.WorldPosition - Vector3(0, 0, z), rotate, scale, false, options)
end
end