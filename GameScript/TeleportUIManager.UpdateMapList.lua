return function (self) 
local mapList = _UserService.LocalPlayer.PlayerStats.mapList
local grid = self.main:GetChildByName("MapGrid")
local nTable = {}
for k, v in pairs(mapList) do
	local clone = grid:GetChildByName("" .. k)
	if clone == nil then
		continue
	end
	nTable["" .. k] = true
	clone:GetChildByName("UIText").TextComponent.Text = _GameUtil:ConvertString(_MapData:GetMapName(tonumber(v))["mapName"], "?")
end
for k, v in pairs(grid.Children) do
	if nTable[v.Name] == nil then
		v:GetChildByName("UIText").TextComponent.Text = ""
	end
end
end