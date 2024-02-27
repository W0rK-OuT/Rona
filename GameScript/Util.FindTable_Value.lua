return function (self,tableName,columnName,columnValue) 
local arr = {}
local findTable = _DataService:GetTable(tableName)
if findTable == nil then
	return nil
end

local rowCount = findTable:GetRowCount()
local columnCount = #findTable.Columns
local colunmTable = findTable.Columns:ToTable()

local checkFind = false

for i = 1, rowCount do
	if findTable:GetCell(i, columnName) == columnValue then
		for j = 1, columnCount do
			arr[colunmTable[j]] = findTable:GetCell(i, j)
		end
		checkFind = true
		break
	end
end
if not checkFind then
	return nil
end
return arr
end