return function (self,id) 
local info = self:GetMonster(id)
return info["name"]
end