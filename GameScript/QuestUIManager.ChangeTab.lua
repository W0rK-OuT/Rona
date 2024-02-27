return function (self,num) 
if num == nil then
	return
end

local ori = self.lastTab
self.lastTab = num

if ori ~= num then
	self:UpdateTab()
	self:SetQuest(0)
end
end