return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: InputService
-- Space: Client
---------------------------------------------------------

-- Parameters
local key = event.key
---------------------------------------------------------
if key == KeyboardKey.RightAlt then
	key = KeyboardKey.LeftAlt
elseif key == KeyboardKey.RightControl then
	key = KeyboardKey.LeftControl
elseif key == KeyboardKey.RightShift then
	key = KeyboardKey.LeftShift
end

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