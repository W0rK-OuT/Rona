return function (self,x) 
if self.blackTrans ~= nil then
	if x == -1 then
		self.blackTrans.Scale.x = -math.abs(self.blackTrans.Scale.x)
		self.blackTrans.Position.x = math.abs(self.blackTrans.Position.x)
	else
		self.blackTrans.Scale.x = math.abs(self.blackTrans.Scale.x)
		self.blackTrans.Position.x = -math.abs(self.blackTrans.Position.x)
	end
end
end