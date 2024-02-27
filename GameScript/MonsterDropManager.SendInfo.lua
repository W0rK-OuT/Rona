return function (self,id,items) 
self.dropInfos[id] = items
self:UpdateItems(items, id == 0 and nil or _MonsterData:GetMonster(id))
end