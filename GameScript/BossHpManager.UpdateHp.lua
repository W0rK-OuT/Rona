return function (self,id,hp,maxHp,tColor,bColor) 
local ori = self.id
self.id = id

if hp <= 0 then
	self:CloseHp()
	return
end

if ori ~= id then
	self:UpdateTag(tColor, bColor)
	self:UpdateBossRUID(id)
end

if not self.main.Enable then
	self.main:SetEnable(true)
	_BuffManager:UpdatePos()
end

local calcPer = math.ceil(hp / math.max(1, maxHp) * 100)
if calcPer < 0 then
	calcPer = 0
elseif calcPer > 100 then
	calcPer = 100
end

self.tColor.LocalScale.x = calcPer * 7.58
self.hpPer.Text = calcPer .. "%"
--self.main:SetEnable(true)
end