return function (self) 
self.Entity.CostumeManagerComponent.DefaultEquipUserId = self.id
self.Entity.NameTagComponent.Name = self.name .. "\n" .. _GameUtil:JobName(self.job)
self.Entity.ChatBalloonComponent.Message = "저는 200레벨을 달성한 " .. self.name .. "입니다."
end