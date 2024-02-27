return function (self) 
local slgc = self.grid.ScrollLayoutGroupComponent
if self.totalCount < self.maxCount then
    slgc:SetScrollPositionByItemIndex(self.totalCount)
else
    slgc:SetScrollNormalizedPosition(UITransformAxis.Vertical, 1)
end
end