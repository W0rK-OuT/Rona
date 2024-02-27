return function (self,num) 
if num == nil then
	return
end

local ori = self.tab
self.tab = num

if ori ~= num then
	self:UpdateUI()
end
end