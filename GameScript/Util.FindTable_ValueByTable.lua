return function (self,tableName,arg1) 
local arr = {}
local findTable = _DataService:GetTable(tableName)

local rowCount = findTable:GetRowCount()
local columnCount = #findTable.Columns
local colunmTable = findTable.Columns:ToTable()

for i = 1, rowCount do
	local check = true
	for key, value in pairs(arg1) do
		if tostring(findTable:GetCell(i, key)) ~= value then
			check = false
			break
		end
	end
	if check then
		for j = 1, columnCount do
			arr[colunmTable[j]] = findTable:GetCell(i, j)
		end
	end
end
return arr
end