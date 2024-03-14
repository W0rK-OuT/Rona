return function (self,swim) 
local pet = self.pet
if not isvalid(pet) then
	return
end

pet.RigidbodyComponent.Gravity = swim and 0.4 or 1
pet.RigidbodyComponent.WalkJump = swim and 0.2 or 1
end