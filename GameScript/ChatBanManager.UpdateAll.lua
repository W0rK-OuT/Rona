return function (self,arg1) 
_UserService.LocalPlayer.PlayerSetting.chatBans = arg1

local grid = self.main:GetChildByName("Grid")
local nTable = {}
for k, v in pairs(arg1) do
	nTable["" .. k] = true
	local clone = grid:GetChildByName("" .. k)
	if clone == nil then
		clone = self.sample:Clone("" .. k)
	end
	clone.TextComponent.Text = v
	clone:SetEnable(true)
end

for k, v in pairs(grid.Children) do
	if nTable[v.Name] == nil then
		v:SetEnable(false)
	end
end
end