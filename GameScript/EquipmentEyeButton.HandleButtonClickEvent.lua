return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local pName = Entity.Name
_UserService.LocalPlayer.PlayerSetting:SetCostume(pName)
end