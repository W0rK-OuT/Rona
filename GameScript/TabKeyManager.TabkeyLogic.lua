return function (self) 
local lastEntity = _UIManager:LastEntity()
if lastEntity == nil then
	return
end

local name = lastEntity.Name
if _PlayerInventoryUILogic.entityName == name then
	local nTab = _PlayerInventoryUILogic.tab + 1
	if nTab > 5 then
		nTab = nTab - 5
	end
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_PlayerInventoryUILogic:SwitchTab(nTab)
elseif _SkillManager.entityName == name then
	local nTab = _SkillManager.lastTab + 1
	if nTab >= 5 then
		nTab = nTab - 5
	end
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_SkillManager:SwitchTab(nTab)
elseif _QuestUIManager.mainEntityName == name then
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_QuestUIManager:ChangeTab(_QuestUIManager.lastTab % 3 + 1)
end
end