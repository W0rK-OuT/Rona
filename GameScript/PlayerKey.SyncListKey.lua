return function (self,listKey) 
self.listKey = listKey
if _PlayerKeyLogic.isLoadOpen then
	_PlayerKeyLogic:UpdateLoadInfo()
end
_PlayerKeyLogic:KeyUpdate(false)
end