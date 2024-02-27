return function (self) 
for k, v in pairs(self.main:GetChildByName("TextGrid").Children) do
	if v.Name ~= "NpcText" then
		v:Destroy()
	end
end
end