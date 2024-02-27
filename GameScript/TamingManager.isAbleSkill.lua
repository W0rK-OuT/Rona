return function (self,taming,skillID) 
if taming == 1932000 then
	if skillID == 5201003 or skillID == 5201002 or skillID == 5211001 or skillID == 5211002 or skillID == 5211004
		or skillID == 5211005 or skillID == 5221000 or skillID == 5220002 or skillID == 5221006 or skillID == 5221007 or skillID == 5221008 or skillID == 5221010 then
		return true
	end
end
return false
end