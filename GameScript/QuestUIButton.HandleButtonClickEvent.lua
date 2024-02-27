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
	_QuestUIManager:CloseUI()
else
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_QuestUIManager:ChangeTab(tonumber(name))
end
end