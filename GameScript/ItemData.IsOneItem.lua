return function (self,itemOption) 
local itemID = itemOption["id"]
return self:IsOneItemByCode(itemID)
end