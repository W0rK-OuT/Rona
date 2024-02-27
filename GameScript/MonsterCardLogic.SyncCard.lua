return function (self,cardTable) 
_UserService.LocalPlayer.PlayerStats.card = cardTable 
self:CheckUpdate()
_QuestManager:QuestUpdateValue()
end