return function (self,pName) 
if pName == "Hp" or pName == "Mp" then
	self.itemType = pName
	self:OpenItemUI()
	return
end

self:ButtonToServer(_UserService.LocalPlayer, pName)
end