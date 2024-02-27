return function (self,id,ruid) 
if ruid == nil then
	return nil
end
if self:IsNoEquipRUID(id) then
	return ruid
end
if id < 2000000 then
	return "thumbnail://" .. ruid
end
return ruid
end