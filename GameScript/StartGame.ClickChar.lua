return function (self,index) 
if index == nil then
	return
end
if index < 1 then
	return
end
if index > self.showCount then
	return
end
if self._T.clickDelay == nil then
	self._T.clickDelay = 0
end

_SoundService:PlaySound("f932d7b186f14be18608b70b8587694e", 1)

local now = _UtilLogic.ElapsedSeconds
if self._T.clickDelay > now and self.selectIndex == index then
	self._T.clickDelay = 0
	self:StartChar()
	return
end
self._T.clickDelay = now + 0.3
self.selectIndex = index
self:UpdateCharacters()
end