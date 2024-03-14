return function (self) 
if _PlayerWeather:IsKeyStop() then
	return
end

self.__PlayerControllerComponent__.ActionSit(self)
end