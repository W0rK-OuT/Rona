return function (self,maxSlot) 
local grid = self.main:GetChildByName("Grid")
for idx = 33, self.invMaxCount do
	local finder = grid:GetChildByName("" .. idx)
	if idx <= maxSlot then
		finder:SetEnable(true)
	else
		finder:SetEnable(false)
	end
end
end