return function (self,id) 
local idType = math.floor(id / 1000000)
return self:GetTable(idType)[id]
end