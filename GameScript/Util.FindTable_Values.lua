return function (self,tableName,columnName,columnValue) 
local arr = {}
local findTable = _DataService:GetTable(tableName)

local rowCount = findTable:GetRowCount()
local columnCount = #findTable.Columns
local colunmTable = findTable.Columns:ToTable()

local checkFind = false

local index = 1
for i = 1, rowCount do
	if findTable:GetCell(i, columnName) == columnValue then
		local array = {}
		for j = 1, columnCount do
			array[colunmTable[j]] = findTable:GetCell(i, j)
		end
		arr[index] = array
		index = index + 1
		checkFind = true
	end
end
if not checkFind then
	return nil
end
return arr
end