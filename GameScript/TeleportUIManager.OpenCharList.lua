return function (self,str) 
if str == nil or _UtilLogic:IsNilorEmptyString(str) then
	_MessageLogic:DropMessage("플레이어를 찾을 수 없습니다.")
	return
end
local nTable = {}
local grid = self.charInfo:GetChildByName("Grid")
local sample = grid:GetChildByName("Sample")
local players = _HttpService:JSONDecode(str)

table.clear(self.players)
self.players = players
for k, v in pairs(grid.Children) do
	v:SetEnable(false)
end
for k, v in pairs(players) do
	nTable["" .. k] = true
	local clone = grid:GetChildByName("" .. k)
	if clone == nil then
		clone = sample:Clone("" .. k)
	end
	local targetMap = _SkillStart:ConvertString(_MapData:GetMapName(v[3])["mapName"], "")
	clone:GetChildByName("UIText").TextComponent.Text = v[1] .. "\n" .. targetMap
	self.players[k] = {v[1], v[2], v[3]}
	clone:SetEnable(true)
end
self.charInfo:SetEnable(true)
end