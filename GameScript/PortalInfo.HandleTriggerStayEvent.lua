return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TriggerComponent
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local TriggerBodyEntity = event.TriggerBodyEntity
---------------------------------------------------------
if TriggerBodyEntity ~= _UserService.LocalPlayer then
	return
end
if self.pt == 3 then
	if _PortalManager.pt3 then
		return
	end
	local now = _UtilLogic.ElapsedSeconds
	if self.tm == self.Entity.CurrentMap.MapInfo.id or _CoolTime.itemToPortalDelay < now then
		_PortalManager.pt3 = true
		_PortalManager:PortalSound()
		_UserService.LocalPlayer.PlayerTrigger:PortalMove(self.Entity)
	end
elseif self.pt == 9 then
	local now = _UtilLogic.ElapsedSeconds
	if self.lastDelay < now then
		if _UserService.LocalPlayer.PlayerNpcTalk.dispose then
			self.lastDelay = now + 0.1
			return
		end
		local totDelay = (self.delay + 100) / 1000
		self.lastDelay = now + totDelay
		if not _UtilLogic:IsNilorEmptyString(self.script) then
			_UserService.LocalPlayer.PlayerTrigger:PortalScript(self.Entity)
		end
		if self.onlyOnce then
			self.Entity.TriggerComponent.Enable = false
		end
	end
end
end