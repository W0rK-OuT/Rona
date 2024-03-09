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

_KeyOperation:KeyUpManager(key)
end