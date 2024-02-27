return function (self,value) 
local ori = self.select
if ori == value then
	self.select = 0
else
	self.select = value
end
for k, v in pairs(self.grid.Children) do
	if v.Name == tostring(self.select) then
		v:GetChildByName("Select"):SetEnable(true)
	else
		v:GetChildByName("Select"):SetEnable(false)
	end
end
end