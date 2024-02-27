return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "ExitButton" then
	_SoundService:PlaySound("69b517263dac4edb8e6f09040177c938", 1)
	_EquipmentLogic:CloseUI()
elseif name == "EyeButton" then
	_SoundService:PlaySound("69b517263dac4edb8e6f09040177c938", 1)
	_EquipmentLogic:UpdateEye(nil)
end
end