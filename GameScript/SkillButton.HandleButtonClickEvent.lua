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
	_SkillUIManager:CloseUI()
elseif name == "Tab0" then
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_SkillUIManager:SwitchTab(0)
elseif name == "Tab1" then
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_SkillUIManager:SwitchTab(1)
elseif name == "Tab2" then
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_SkillUIManager:SwitchTab(2)
elseif name == "Tab3" then
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_SkillUIManager:SwitchTab(3)
elseif name == "Tab4" then
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_SkillUIManager:SwitchTab(4)
end
end