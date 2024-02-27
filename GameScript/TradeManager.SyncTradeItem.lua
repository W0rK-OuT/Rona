return function (self,items,syncType) 
local entity
if syncType == 0 then
	self:UpdateItem(items)
else
	self:UpdatePartnerItem(items)
end
end