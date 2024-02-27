return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
if _NpcTalkLogic.main.Enable then
	local npcTalk = _UserService.LocalPlayer.PlayerNpcTalk
	local sel = tonumber(_UtilLogic:SubString(Entity.Name, 4))
	npcTalk:MoreTalk(1, sel, "")
else
	_QuestTalkManager:ButtonEvent(Entity.Name)
end
end