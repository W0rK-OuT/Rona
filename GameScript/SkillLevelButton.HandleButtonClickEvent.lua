return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local skillID = tonumber(Entity.Parent.Name)
if skillID == nil then
	return
end
_SkillUIManager:SkillLevelUpButton(skillID)
end