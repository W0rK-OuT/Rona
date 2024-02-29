return function (self,arg1,targetID) 
local topLeft = self.main:GetChildByName("TopLeft")
if arg1 == nil then
	topLeft:GetChildByName("Mask"):GetChildByName("Partner"):SetEnable(false)
else
	local ent = topLeft:GetChildByName("Mask"):GetChildByName("Partner")
	ent.CostumeManagerComponent.DefaultEquipUserId = targetID
    --for k, v in pairs(arg1) do
		--ent.CostumeManagerComponent:SetEquip(v[1], v[2])
    --end
	ent:SetEnable(true)
end
end