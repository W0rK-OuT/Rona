return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: InputService
-- Space: Client
---------------------------------------------------------

-- Parameters
local key = event.key
---------------------------------------------------------
_KeyOperation:KeyManager(key, false)
--_UIManager:OnOffCloseManager()

if key == KeyboardKey.KeypadPlus then
	_CommandLogic:CheckUI()
end

local downKey = _PlayerKeyLogic.downKey[key]
if downKey ~= nil then
	self:ActionKey(downKey)
end
end