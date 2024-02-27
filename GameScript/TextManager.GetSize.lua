return function (self,textCom,fontSize,text) 
if self:IsHan(text) then
	local calcSize = self.baseSize[fontSize]
	if calcSize == nil then
		calcSize = textCom:GetPreferredWidth("가")
		self.baseSize[fontSize] = calcSize
	end
	return calcSize
end

local calcSize = self.textSize[text]
if calcSize == nil then
	calcSize = textCom:GetPreferredWidth(text)
	self.textSize[text] = calcSize
end
return calcSize
end