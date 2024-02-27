return function (self,quick) 
local baseTable = _PlayerKeyLogic:BaseTable(0, 0, 0, 0)
local buttons = _UserService.LocalPlayer.PlayerKey.pcButtons
---@type Entity
local grid = quick and self.openBox:GetChildByName("Grid") or self.pcButtons
---@type Entity
local sample = quick and self.boxSample or self.sample

if quick then
	self.openBox:AttachChild(self.light)
	self:SetLastClick("")
end

for k, v in pairs(grid.Children) do
	if v.Name ~= "Sample" then
		v:Destroy()
	end
end

local sampleX = 32
local sampleY = 30
local firstX = 7
local nextX = 3
local firstY = 8
local nextY = 4

for k, v in pairs(buttons) do
	local num = tonumber(k)
	local one = num % 10
	local two = math.floor(num / 10)
	
	local clone = sample:Clone("" .. v)
	local anPos = clone.UITransformComponent.anchoredPosition
	anPos.x = -((sampleX * 2 + nextX * 2) * (one - 1) + firstX * 2)
	anPos.y = ((sampleY * 2 + nextY * 2) * two + firstY * 2)
	
	clone:GetChildByName("Code").TextComponent.Text = "" .. k
	clone:GetChildByName("Key"):SetEnable(false)
	
	for kk, vv in pairs(baseTable) do
		if vv[1] == v then
			clone:GetChildByName("UIText").TextComponent.Text = vv[2]
			break
		end
	end
end

if not quick then
	_PlayerKeyLogic:KeyUpdate(false)
end
end