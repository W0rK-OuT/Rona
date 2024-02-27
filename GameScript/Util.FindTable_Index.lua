return function (self,tableName,columnName,columnValue,cellFindIndex) 
local arr = {}
local findTable = _DataService:GetTable(tableName)

local rowCount = findTable:GetRowCount()
local columnCount = #findTable.Columns
local colunmTable = findTable.Columns:ToTable()
local newIndex = 1
for i = 1, rowCount do
	if findTable:GetCell(i, columnName) == columnValue then
		if newIndex == cellFindIndex then
			for j = 1, columnCount do
				arr[colunmTable[j]] = findTable:GetCell(i, j)
			end
			break
		end
		newIndex = newIndex + 1
	end
end
return arr
end