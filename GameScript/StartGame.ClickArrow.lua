return function (self,isLeft) 
local ori = self.showIndex
if isLeft then
	self.showIndex -= 1
else
	self.showIndex += 1
end
if self.showIndex < 0 then
	self.showIndex = 0
elseif self.showIndex >= math.ceil(self.maxCount / self.showCount) then
	self.showIndex = math.ceil(self.maxCount / self.showCount) - 1
end
if ori ~= self.showIndex then
	self.selectIndex = 0
	self:UpdateCharacters()
end
end