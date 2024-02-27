return function (self) 
self.main:SetEnable(false)
self.main.UITransformComponent.anchoredPosition.x = 0
self.testMain:SetEnable(false)

for idx = 1, 4 do
	local num = self.main:GetChildByName("" .. idx)
	if num ~= nil then
		if self.isNumber then
			num:GetChildByName("ruid"):SetEnable(false)
		else
			num:GetChildByName("number"):SetEnable(false)
		end
	end
end
end