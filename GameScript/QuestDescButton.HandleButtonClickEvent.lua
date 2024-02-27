return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "ExitButton" then
	_QuestUIManager:SetQuest(0)
elseif name == "GiveUp" then
	_QuestUIManager:OpenYesNo()
else
	
end
end