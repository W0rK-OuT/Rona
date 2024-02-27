return function (self,player,order) 
local taming = player:GetChildByName("taming")
if taming ~= nil then
	taming.TamingInfo:UpdateOrder(order)
end
end