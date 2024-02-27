return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local now = _UtilLogic.ElapsedSeconds

if self.lastTime < now then
	self.lastTime = now + 0.4
	return
end
_ChatBanManager:Remove(_UserService.LocalPlayer, self.Entity.TextComponent.Text)
end