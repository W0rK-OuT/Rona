return function (self,player,sort) 
local sp = player.PlayerMotion.partner
if sp ~= nil then
	sp.ShadowInfo:UpdateSort(sort)
end
end