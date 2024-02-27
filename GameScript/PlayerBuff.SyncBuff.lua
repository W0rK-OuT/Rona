return function (self,skillID,buffs) 
self.buffs[skillID] = buffs
if buffs == nil then
	_BuffManager:RemoveBuff(skillID)
else
	_BuffManager:AddBuff(skillID, buffs)
end
end