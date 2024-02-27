return function (self,id,key) 
local summonData = self.summonData[id]
if summonData == nil then
	return nil
end
return summonData[key]
end