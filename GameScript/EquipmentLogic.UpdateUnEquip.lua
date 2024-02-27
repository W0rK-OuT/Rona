return function (self,list) 
for k, v in pairs(self.grid.Children) do
	v:GetChildByName("red"):SetEnable(false)
end
for k, v in pairs(list) do
	local find = self.grid:GetChildByName(v)
	if find ~= nil then
		find:GetChildByName("red"):SetEnable(true)
	end
end
end