return function (self,text,color) 
if self.isRemove then
	return
end

self.totalCount += 1

local slgc = self.grid.ScrollLayoutGroupComponent
local clone = self.sample:Clone("msg")
clone.TextComponent.Text = text
if color ~= nil then
	clone.TextComponent.FontColor = color
end

if self.totalCount <= self.maxCount then
	slgc:SetScrollPositionByItemIndex(self.totalCount)
elseif slgc:GetScrollNormalizedPosition(UITransformAxis.Vertical) >= 0.98 then
	slgc:SetScrollNormalizedPosition(UITransformAxis.Vertical, 1)
end
end