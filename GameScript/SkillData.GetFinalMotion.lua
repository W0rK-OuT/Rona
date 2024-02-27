return function (self,attack) 
if attack < 1 or attack > 5 then
	return nil
end
local rand = self.finalAttack[attack]
return rand[math.random(1, #rand)]
end