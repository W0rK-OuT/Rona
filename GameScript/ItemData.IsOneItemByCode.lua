return function (self,id) 
if id < 2000000 or _ShopUILogic:IsRecharge(id) then
	return true
end
return false
end