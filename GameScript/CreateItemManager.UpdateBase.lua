return function (self) 
self.main:SetEnable(false)

local grid = self.main:GetChildByName("Grid")
local sample = grid:GetChildByName("Sample")

sample:SetEnable(false)

for _, option in pairs(_SaveUtil.keyTable) do
	if option == "id" or option == "quantity" then
		continue
	end
	local clone = grid:GetChildByName(option)
	if clone == nil then
		clone = sample:Clone(option)
		clone:GetChildByName("Option").TextComponent.Text = option
	end
end
end