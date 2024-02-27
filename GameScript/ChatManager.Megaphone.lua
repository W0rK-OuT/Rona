return function (self,nickName,id,code,text,typeCode) 
if self.isRemove then
	return
end

local base = ""
if typeCode == 0 then
	base ..= "<고확> "
	base ..= nickName .. "#" .. code
	base ..= " : " .. text
else
	base ..= "<시스템> "
	base ..= nickName .. "#" .. code
	base ..= text
end

self.totalCount += 1

local slgc = self.grid.ScrollLayoutGroupComponent
local clone = self.sample:Clone("msg")
local textCom = clone.TextComponent
textCom.Text = base

if type == 0 then
	clone.SpriteGUIRendererComponent.Color = Color(255 / 255, 159 / 255, 236 / 255, 0.75)
else
	clone.SpriteGUIRendererComponent.Color = Color(129 / 255, 237 / 255, 35 / 255, 0.75)
end

if self.totalCount <= self.maxCount then
	slgc:SetScrollPositionByItemIndex(self.totalCount)
elseif slgc:GetScrollNormalizedPosition(UITransformAxis.Vertical) == 1 then
	slgc:SetScrollNormalizedPosition(UITransformAxis.Vertical, 1)
end

if self.totalCount >= 100 then
	local msg = self.grid:GetChildByName("msg")
	if msg ~= nil then
		msg:Destroy()
		self.totalCount -= 1
	end
end
end