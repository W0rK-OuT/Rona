return function (self,tColor,bColor) 
if tColor < 1 or tColor > 7 then
	tColor = 1
end
if bColor < 1 or bColor > 7 then
	bColor = 5
end
self.tColor.ImageRUID = self.colorRUID[tColor]
self.bColor.ImageRUID = self.colorRUID[bColor]
end