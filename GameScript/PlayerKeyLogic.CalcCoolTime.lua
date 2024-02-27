return function (self) 
local main = self.mainQuickSlot

for k, v in pairs(main.Children) do
	local coolCom = v:GetChildByName("Cool").KeyCoolTime
	coolCom.Enable = coolCom:CalcTime()
end
end