return function (self,id,level) 
local ruid = self.ruid[id]
if ruid ~= nil then
	return ruid
end
return self.mobUseRuid[id .. "/" .. level]
end