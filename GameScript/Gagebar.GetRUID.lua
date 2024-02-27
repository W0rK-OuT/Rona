return function (self,id,str) 
local t = self.soundAndEffect[id]
if t == nil then
	return nil
end
return t[str]
end