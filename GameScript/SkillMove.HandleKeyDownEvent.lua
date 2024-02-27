return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: InputService
-- Space: Client
---------------------------------------------------------

-- Parameters
local key = event.key
---------------------------------------------------------
local findKey = _PlayerKeyLogic.dirKey[key]
if findKey == "MoveLeft" then
	self.left = true
	if _SkillManager.dash > 0 then
		if self.right then
			self.doubleClick = 0
			return
		end
		local now = _UtilLogic.ServerElapsedSeconds
		if self.doubleClick < now then
			self.doubleClick = now + 0.2
			return
		end
		_SkillBuff:StartBuff(_SkillManager.dash, now)
	end
elseif findKey == "MoveRight" then
	self.right = true
	if _SkillManager.dash > 0 then
		if self.left then
			self.doubleClick = 0
			return
		end
		local now = _UtilLogic.ServerElapsedSeconds
		if self.doubleClick < now then
			self.doubleClick = now + 0.2
			return
		end
		_SkillBuff:StartBuff(_SkillManager.dash, now)
	end
elseif findKey == "MoveUp" then
	self.up = true
elseif findKey == "MoveDown" then
	self.down = true
end
end