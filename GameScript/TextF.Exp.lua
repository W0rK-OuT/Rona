return function (self,exp) 
if _RateManager.quest > 1 then
	return "[경험치 획득!!] " .. exp .. "x" .. _RateManager.quest .. " (" .. exp * _RateManager.quest .. ") exp"
	--return exp .. "x" .. _RateManager.quest .. " (" .. exp * _RateManager.quest .. ")"
else
	return "" .. exp
end
end