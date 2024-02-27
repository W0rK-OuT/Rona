return function (self,skillID) 
local strNum = tostring(skillID) 
local clone = self.main:GetChildByName(strNum)
if clone ~= nil then
	clone:Destroy()
end
end