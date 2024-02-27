return function (self,idx) 
local f = self.throwTable[idx]
if f ~= nil then
	return f
end

local findTable = _DataService:GetTable("ThrowSkin")
local rowCount = findTable:GetRowCount()
if idx < 1 or idx > rowCount then
	return nil
end
local row = findTable:GetRow(idx)
local len = #findTable.Columns
local colunmTable = findTable.Columns:ToTable()

local nTable = {}
for i = 1, len do
	local calName = colunmTable[i]
	if calName == "id" or calName == "name" or calName == "fix" then
		continue
	end
	nTable[calName] = findTable:GetCell(idx, i)
end
self.throwTable[idx] = nTable
return nTable
end