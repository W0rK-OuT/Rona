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
	self.left = false
	_UserService.LocalPlayer.PlayerBuff:CancelDashAction()
elseif findKey == "MoveRight" then
	self.right = false
	_UserService.LocalPlayer.PlayerBuff:CancelDashAction()
elseif findKey == "MoveUp" then
	self.up = false
elseif findKey == "MoveDown" then
	self.down = false
end
end