return function (self,id) 
if _PlayerWeather:IsPotionStop() then
	return
end
_UseItem:UseItem(id)
end