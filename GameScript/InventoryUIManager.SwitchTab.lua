return function (self,newTab) 
if newTab < 1 or newTab > 5 then
	return
end

local ori = self.tab
self.tab = newTab
self:SetLastClick("")
if ori == newTab then
	return
end

self:UpdateTabColor(newTab)
self:UpdateInventory()
self:Highlight()
end