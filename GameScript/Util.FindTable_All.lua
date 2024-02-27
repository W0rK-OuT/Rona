return function (self,tableName) 
local arr = {}
local findTable = _DataService:GetTable(tableName)

local rowCount = findTable:GetRowCount()
local columnCount = #findTable.Columns
local colunmTable = findTable.Columns:ToTable()

local index = 1
for i = 1, rowCount do
	local array = {}
	for j = 1, columnCount do
		array[colunmTable[j]] = findTable:GetCell(i, j)
	end
	arr[index] = array
	index = index + 1
end
return arr
end