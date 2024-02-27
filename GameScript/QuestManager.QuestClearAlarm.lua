return function (self,questID) 
_SoundService:PlaySound("be1476f72ff94886943d65051e91a32a", 1.5)
_MessageLogic:ChatMessage(5, "퀘스트 완료! " .. _QuestData:GetName(questID))
end