return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local num = tonumber(Entity.Name)
if num == nil then
	return
end

if num == 1 then
	_SoundService:PlaySound("5aacfda92ef246ec93ab46c59dfb53e3", 1)
elseif num == 2 then
	_SoundService:PlaySound("f3a37095237047a3969c5825c848e546", 1)
elseif num == 3 then
	_SoundService:PlaySound("96a8703bb0614fe096df010cec3ffb79", 1)
elseif num == 4 then
	_SoundService:PlaySound("58b4cefadf694f3eb896af2847fdd328", 1)
end
_PetOptionManager:PetSoundChange(_UserService.LocalPlayer, num)
end