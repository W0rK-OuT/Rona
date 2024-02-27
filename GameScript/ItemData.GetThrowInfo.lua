return function (self,id) 
local tInfo = self.throws[id]
if tInfo == nil then
	local itemTable = _Util:FindTable_Value("ThrowEffect", "id", tostring(id))
	if itemTable == nil then
		self.throws[id] = {}
		return {}
	end
	local info = {}
	local itemInfo = self:GetItemInfo(id)
	
	info["ruid"] = itemTable["ruid"]
	info["incPAD"] = _Util:ConvertNumber(itemInfo["incPAD"])
	info["reqLevel"] = _Util:ConvertNumber(itemInfo["reqLevel"])
	
	self.throws[id] = info
	return info
else
	return tInfo
end
end