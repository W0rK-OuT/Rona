return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
if _NpcTalkLogic.main.Enable then
	_NpcTalkLogic:NumEvent(tonumber(Text))
else
	
end
end