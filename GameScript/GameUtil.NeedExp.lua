return function (self,level) 
if level >= 200 then
	return tonumber(_DataService:GetCell("NeedExp", 199, 1)) * math.pow(1.0548, math.min(101, level - 199))
else
	return tonumber(_DataService:GetCell("NeedExp", math.max(1, level), 1))
end
end