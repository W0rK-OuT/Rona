return function (self,arg1) 
if not self.special and arg1 then
	_MessageLogic:ChatMessage(5, "자석펫이 비활성화됩니다.")
end
if self.special and not arg1 then
	_MessageLogic:ChatMessage(5, "자석펫이 활성화됩니다.")
end
self.special = arg1
end