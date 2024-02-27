return function (self) 
local rmv = _PlayerComponent.rigid.RealMoveVelocity.x
if rmv > 0 then
	return 1
elseif rmv < 0 then
	return -1
else
	return 0
end
end