return function (self,pName,num) 
if num == nil then
	return
end
if num < 0 then
	num = 0
end
if num > 100 then
	num = 100
end
self:InputToSever(_UserService.LocalPlayer, pName, num)
end