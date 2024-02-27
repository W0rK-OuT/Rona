return function (self,player,isLeft) 
local taming = player:GetChildByName("taming")
if taming ~= nil then
	taming.TamingInfo:UpdateLookAt(isLeft)
end
end