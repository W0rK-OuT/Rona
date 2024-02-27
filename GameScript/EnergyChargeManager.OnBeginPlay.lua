return function (self) 
self.main:SetEnable(false)

self.left = self.main:GetChildByName("left2")
self.gage = self.main:GetChildByName("gage")
self.right = self.main:GetChildByName("right2")
self.effect = self.main:GetChildByName("gageDone")

--a18108e7b563424896066169a0a33b9d 기모으는eff
--
--dd56a00db0f64406b91f230a72105cb2 몹hit
--91f5bcc542fb494da830b31e246e5bda 바디어택
end