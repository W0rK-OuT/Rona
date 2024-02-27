return function (self) 
local pt = self.pt
if pt == 1 or pt == 2 or pt == 7 or pt == 8 or pt == 10 or pt == 11 then
	return true
end
return false
end