return function (self,attack) 
if attack <= 0 or attack >= 10 then
	attack = 8
end
local rand = self.normalAttack[attack]
return rand[math.random(1, #rand)]
end