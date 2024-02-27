return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: InputService
-- Space: Client
---------------------------------------------------------

-- Parameters
local key = event.key
---------------------------------------------------------
if Environment:IsMakerPlay() then
    if key == KeyboardKey.Mouse1 then
        _UserService.LocalPlayer.RigidbodyComponent:SetPosition(_UILogic:ScreenToWorldPosition(_InputService:GetCursorPosition()))
    end
end
_KeyOperation:KeyManager(key, true)
end