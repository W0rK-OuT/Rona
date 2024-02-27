return function (self,id) 
local info = self:NpcInfo(id)
return info["info"]
end