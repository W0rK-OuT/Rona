return function (self,meso,syncType) 
if syncType == 0 then
	self:UpdateMeso(meso)
else
	self:UpdatePartnerMeso(meso)
end
end