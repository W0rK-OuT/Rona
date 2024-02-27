return function (self) 
local modelName = self.Entity.Model.Name
local spl = _UtilLogic:Split(modelName, "_")

local id = tonumber(spl[1])
local mobName = spl[2]
if mobName == "m" then
	mobName = _MonsterData:GetMonsterName(id)
end

self.id = id

local hitBoxTable = _MonsterData:GetMonsterHitBox(id)
if hitBoxTable == nil then
	return
end
local x = tonumber(hitBoxTable["x"]) / 100
local y = tonumber(hitBoxTable["y"]) / 100
local hx = tonumber(hitBoxTable["hx"]) / 100
local hy = tonumber(hitBoxTable["hy"]) / 100
local cx = tonumber(hitBoxTable["cx"]) / 100
local cy = tonumber(hitBoxTable["cy"]) / 100

self.boxX = x
self.boxY = y
self.head.x = hx
self.head.y = hy

local buffBox = self.Entity:GetChildByName("buffBox1")
if buffBox ~= nil then
	local pos = buffBox.TransformComponent.Position
	pos.x = -self.head.x
	pos.y = self.head.y
end

local tri = self.Entity.TriggerComponent
if tri ~= nil then
	tri.ColliderOffset = Vector2(cx, cy)
	tri.BoxSize = Vector2(x, y)
	if self:IsClient() then
		tri.Enable = true --not self.noHit
	end
end

if self:IsClient() then
	local mobData = _MonsterData:GetMonster(id)
	self.clientTColor = _SkillStart:ConvertValue(mobData["hpTagColor"], 0)
	self.clientBColor = _SkillStart:ConvertValue(mobData["hpTagBgcolor"], 0)
	if self.clientTColor == 0 and self.clientBColor == 0 then
		local hpBar = _SpawnService:SpawnByModelId("model://ee08026b-c1e4-4d13-954d-2e26ecd443a9", "HpBar", Vector3(0, y + 0.2, 0), self.Entity)
		hpBar.SpriteRendererComponent.SortingLayer = self.Entity.SpriteRendererComponent.SortingLayer
		hpBar.SpriteRendererComponent.OrderInLayer = self.Entity.SpriteRendererComponent.OrderInLayer
		hpBar.TransformComponent.Position.z = -0.0001
		local black = hpBar:GetChildByName("Black")
		black.SpriteRendererComponent.SortingLayer = self.Entity.SpriteRendererComponent.SortingLayer
		black.SpriteRendererComponent.OrderInLayer = self.Entity.SpriteRendererComponent.OrderInLayer
		black.TransformComponent.Position.z = -0.0002
		
		hpBar:SetEnable(false)
		self.hpBar = hpBar
		self.black = black
		self.blackTrans = black.TransformComponent
		
		self.Entity.NameTagComponent.Name = "<size=0.8>Lv." .. self.level .. "</size> " .. mobName
	end
end
end