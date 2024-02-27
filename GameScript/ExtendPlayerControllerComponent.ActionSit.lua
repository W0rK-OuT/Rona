return function (self) 
if _PlayerWeather.stun then
	return
end

self.__PlayerControllerComponent__.ActionSit(self)
end