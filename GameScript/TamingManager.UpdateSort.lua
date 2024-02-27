return function (self,player,sort) 
local taming = player:GetChildByName("taming")
if taming ~= nil then
	taming.TamingInfo:UpdateSort(sort)
end
end