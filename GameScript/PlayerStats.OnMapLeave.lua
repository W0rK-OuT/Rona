return function (self,leftMap) 
if self:IsServer() then
	local mapInfo = leftMap.MapInfo
	if mapInfo == nil then
		return
	end
	mapInfo:LeavePlayer()
else
	if self.Entity ~= _UserService.LocalPlayer then
		return
	end
	self.Entity.RigidbodyComponent.Enable = false
	self.Entity.TriggerComponent.Enable = false
	
	_PetManager:ChildPet(true)
end
end