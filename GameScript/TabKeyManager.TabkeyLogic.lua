return function (self) 
local lastEntity = _UIManager:LastEntity()
if lastEntity == nil then
	return
end

local name = lastEntity.Name
if _InventoryUIManager.entityName == name then
	local nTab = _InventoryUIManager.tab + 1
	if nTab > 5 then
		nTab = nTab - 5
	end
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_InventoryUIManager:SwitchTab(nTab)
elseif _SkillUIManager.entityName == name then
	local nTab = _SkillUIManager.lastTab + 1
	if nTab >= 5 then
		nTab = nTab - 5
	end
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_SkillUIManager:SwitchTab(nTab)
elseif _QuestUIManager.mainEntityName == name then
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_QuestUIManager:ChangeTab(_QuestUIManager.lastTab % 3 + 1)
end
end