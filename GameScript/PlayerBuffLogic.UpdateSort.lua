return function (self,player,sort) 
local comboEntity = player:GetChildByName("combo")
if comboEntity ~= nil then
	comboEntity.ComboInfo:UpdateSort(sort)
end
end