return function (self) 
if self.selectIndex == 0 then
	return
end

local num = self.selectIndex + self.showIndex * self.showCount - 1
if num < 0 then
	return
end
if num >= self.maxCount then
	return
end
self:ButtonClick(num)
end