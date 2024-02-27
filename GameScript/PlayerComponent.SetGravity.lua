return function (self,power) 
if _PlayerWeather.swim then
	_PlayerComponent.rigid.Gravity = 0.4
else
	_PlayerComponent.rigid.Gravity = power
end
end