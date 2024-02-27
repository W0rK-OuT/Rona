return function (self,player,isRope,isLeft) 
local sp = player.PlayerMotion.partner
if sp ~= nil then
	sp.ShadowInfo:UpdateDir(isRope, isLeft)
end
end