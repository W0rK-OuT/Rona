return function (self,str) 
if _UtilLogic:IsNilorEmptyString(str) then
	return
end

local grid = self.posUserMain:GetChildByName("Grid")
for k, v in pairs(grid.Children) do
	v:SetEnable(false)
end
local sample = grid:GetChildByName("Sample")

local myName = _UserService.LocalPlayer.Name
local nTable = _HttpService:JSONDecode(str)

table.sort(nTable,
	function(a, b)
		return a["level"] < b["level"]
	end
)

for k, playerData in pairs(nTable) do
	local clone = grid:GetChildByName("" .. k)
	if clone == nil then
		clone = sample:Clone("" .. k)
	end
	clone:GetChildByName("id").TextComponent.Text = playerData["id"]
	clone:GetChildByName("name").TextComponent.Text = playerData["name"]
	clone:GetChildByName("map").TextComponent.Text = playerData["map"]
	clone:GetChildByName("lie").TextComponent.Text = playerData["lie"]
	clone:GetChildByName("Button"):SetEnable(playerData["id"] ~= myName)
	
	clone:SetEnable(true)
end

self.posUserMain:SetEnable(true)
_UIManager:Add(self.posUserMain)
end