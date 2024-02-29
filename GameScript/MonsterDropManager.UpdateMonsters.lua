return function (self) 
local mobs = {}

---@type CollisionSimulator
local simul = _TamingInfoManager.simulator
for k, v in pairs(simul:OverlapBoxAll("monster", Vector2.zero, Vector2(99999, 99999), 0)) do
	mobs[v.Entity.MobInfo.id] = 0
end

local grid = self.mobSample.Parent
for k, v in pairs(grid.Children) do
	v:SetEnable(false)
end

local reTable = {}
for k, _ in pairs(mobs) do
	self:revieveCheck(reTable, k)
end

for k, _ in pairs(reTable) do
	local clone = grid:GetChildByName("" .. k)
	if clone == nil then
		clone = self.mobSample:Clone("" .. k)
	end
	local name = _MonsterData:GetMonsterName(k)
	if _UtilLogic:IsNilorEmptyString(k) then
		continue
	end
	clone:GetChildByName("Name").TextComponent.Text = name
	clone:SetEnable(true)
end
end