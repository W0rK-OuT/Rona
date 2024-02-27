return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TouchReceiveComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local TouchId = event.TouchId
local TouchPoint = event.TouchPoint
---------------------------------------------------------
if _InputService:IsPointerOverUI() then
	return
end
local now = _UtilLogic.ElapsedSeconds
if _CharInfoLogic.delay < now then
	_CharInfoLogic.delay = now + 0.3
	return
end
_CharInfoLogic:OpenCharBox()
_CharInfoLogic:FindCharServer(self.Entity.Name, _UserService.LocalPlayer.Name)
end