return function (self,alpha) 
if isvalid(self.child) then
	self.child.DropAni:StartRemove(false, alpha)
end
end