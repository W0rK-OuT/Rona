return function (self,columnValue) 
local ntable = self:FindTable_Values("ConsumeDataSet", "id", columnValue)
local arr = {}
for key, value in pairs(ntable) do
	local name = value["key"]
	local calValue = self:ConvertNumber(value["value"])
	arr[name] = calValue
end
return arr
end