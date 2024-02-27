return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------

local pName = Entity.Parent.Name
local questTalk = _QuestTalkManager
if questTalk.entityName == pName then
	local name = Entity.Name
	if name == "Exit" then
		questTalk:DisposeQuest()
	elseif name == "Ok" then
		questTalk:QuestTalkMore(1, -1)
	elseif name == "Next" then
		questTalk:QuestTalkMore(1, -1)
	elseif name == "Prev" then
		questTalk:QuestTalkMore(0, -1)
	elseif name == "Accept" or name == "Yes" then
		questTalk:UIButtonEvent("Yes")
	elseif name == "Decline" or name == "No" then
		questTalk:UIButtonEvent("No")
	end
else
	_NpcTalkLogic:CloseUI()
	
	local name = Entity.Name
	local npcTalk = _UserService.LocalPlayer.PlayerNpcTalk
	if name == "Exit" then
		npcTalk:Dispose()
	elseif name == "Ok" then
		--_NpcTalkLogic:CloseUI()
		npcTalk:MoreTalk(1, -1, "")
	elseif name == "Next" then
		npcTalk:MoreTalk(1, -1, "")
	elseif name == "Prev" then
		npcTalk:MoreTalk(0, -1, "")
	elseif name == "Accept" or name == "Yes" then
		npcTalk:MoreTalk(1, -1, "")
	elseif name == "Decline" or name == "No" then
		npcTalk:MoreTalk(1, -2, "")
	end
end
end