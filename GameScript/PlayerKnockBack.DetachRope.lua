return function (self) 
-- ======================================================
-- 플레이어를 로프에서 떨어뜨립니다.
-- ======================================================
local player = _UserService.LocalPlayer
if self.CurStatus == "LADDER" or self.CurStatus == "CLIMB" then
	player.StateComponent:ChangeState("FALL")
	player.PlayerControllerComponent.Enable = false
end
end