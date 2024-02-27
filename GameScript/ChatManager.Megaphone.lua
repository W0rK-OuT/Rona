return function (self,nickName,id,code,text) 
if self.isRemove then
	return
end

local base = "<고확> "
base ..= nickName .. "#" .. code
base ..= " : " .. text

self.totalCount += 1

local slgc = self.grid.ScrollLayoutGroupComponent
local clone = self.sample:Clone("msg")
local textCom = clone.TextComponent
textCom.Text = base

clone.SpriteGUIRendererComponent.Color = Color(255 / 255, 159 / 255, 236 / 255, 0.75)

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