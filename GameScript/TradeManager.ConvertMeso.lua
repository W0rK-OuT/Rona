return function (self,meso) 
if meso < 0 then
	return ""
end
local re = ""
if meso >= 100000000 then
	re = math.floor(meso / 100000000) .. "억"
end
if meso >= 10000 then
	re ..= " " .. math.floor(meso % 100000000 / 10000) .. "만"
end
re ..= " " .. (meso % 10000)
return _UtilLogic:Trim(re, " ")
end