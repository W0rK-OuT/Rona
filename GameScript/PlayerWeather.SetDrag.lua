return function (self) 
local rigid = _UserService.LocalPlayer.RigidbodyComponent
if self.spike then
	rigid.WalkAcceleration = 1
	rigid.WalkDrag = 1
else
	rigid.WalkAcceleration = self.fs
	rigid.WalkDrag = self.fs
end
end