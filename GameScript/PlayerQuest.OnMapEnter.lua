return function (self,enteredMap) 
if self.Entity ~= _UserService.LocalPlayer then
    return
end

_QuestManager:AllUpdateQuest()
end