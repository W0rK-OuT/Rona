return function (self,num) 
if num == nil then
	num = 0
end
self:InputToSever(_UserService.LocalPlayer, self.itemType .. "Code", num)
self:CloseItemUI()
end