return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "Menu" then
	_SoundService:PlaySound("28a57c34a0b042f6943e6c3048cb9ddc", 1)
	_StatusMenuLogic:OpenUI()
elseif name == "CashShop" then
	_BMShop:CheckUI()
elseif name == "Short" then
	_SoundService:PlaySound("69b517263dac4edb8e6f09040177c938", 1)
	_StatusSortLogic:OpenUI()
end
end