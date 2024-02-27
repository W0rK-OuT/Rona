return function (self,effect,pos,rotate,scale,z) 
local player = self.Entity
if isvalid(player) then
	local avatar =  player.AvatarRendererComponent
	local options = {}
	options["FlipX"] = player.PlayerControllerComponent.LookDirectionX > 0
	options["SortingLayer"] = avatar.SortingLayer
	options["OrderInLayer"] = avatar.OrderInLayer + z
	_EffectService:PlayEffectAttached(effect, player, pos, rotate, scale, false, options)
end
end