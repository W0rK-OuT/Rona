return function (self,state) 
if state == "ATTACK" then
	self:JumpAttack()
elseif state == "SKILL" then
	for idx = 1, math.random(1, 5) do
		self:SpawnBullet()
	end
end
end