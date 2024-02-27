return function (self,id) 
if id == 5390000 then
	return self:GetPetScoll()
elseif id == 5390001 then
	return self:GetBadgeScoll()
elseif id == 5390002 then
	return self:GetCurseScrollTable()
end
return nil
end