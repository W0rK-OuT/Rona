return function (self,idx) 
local findTable = _DataService:GetTable("DecoSkin")
local rowCount = findTable:GetRowCount()
if idx < 1 or idx > rowCount then
	return nil
end
return findTable:GetCell(idx, 1)
end