return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
local pName = Entity.Parent.Name
if pName == _TradeInvite.entityName then
	if name == "Yes" then
		_TradeInvite:YesButton()
	elseif name == "No" then
		_TradeInvite:NoButton()
	end
elseif pName == _TradeYesNoManager.entityName then
	if name == "Yes" then
		_TradeYesNoManager:YesButton()
	elseif name == "No" then
		_TradeYesNoManager:NoButton()
	end
elseif pName == _PartyManager.acceptBoxName then
	if name == "Yes" then
		_PartyManager:AcceptYesButton()
	elseif name == "No" then
		_PartyManager:AcceptNoButton()
	end
elseif pName == _UseCash.entityName then
	if name == "Yes" then
		_UseCash:YesButton()
	elseif name == "No" then
		_UseCash:CloseUseBox()
	end
elseif pName == _TeleportUIManager.teleYesNoName then
	if name == "Yes" then
		_TeleportUIManager:YesButton()
	elseif name == "No" then
		_TeleportUIManager:CloseYesNo()
	end
elseif pName == _QuestUIManager.acceptBoxName then
	_QuestUIManager:BoxEvent(name)
elseif pName == _DragDropManager.yesNoName then
	_DragDropManager:CloseYesNoUI()
	if name == "Yes" then
		_DragDropManager:OpenCountUI()
	end
end
end