return function (self,area,on) 
local grid = self.main:GetChildByName("Grid")

for k, v in pairs(grid.Children) do
	if v.QuestChildButton then
		if v.QuestChildButton.area == area then
			v:SetEnable(on)
		end
	end
end
end