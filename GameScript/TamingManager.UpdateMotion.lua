return function (self,player,motion) 
local taming = player:GetChildByName("taming")
if taming ~= nil then
	taming.TamingInfo:UpdateRUID(motion)
end
end