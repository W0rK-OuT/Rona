return function (self) 
self.lastSlot = ""
self.lastTab = 0

--self:SetLastClick("")
self.lastClick = ""
_DragBackManager:SameClose("inv")

self:Highlight()
end