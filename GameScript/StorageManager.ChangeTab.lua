return function (self,num) 
if num == nil then
	return
end

if self.tab == num then
	return
end
self:CloseCountBox()
self.tab = num
self:UpdateTab()
self:UpdateItems()
end