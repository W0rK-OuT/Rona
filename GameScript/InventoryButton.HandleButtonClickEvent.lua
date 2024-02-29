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
	_InventoryUIManager:CloseUI()
elseif name == "SortButton" then
	if self._T.cool == nil then
		self._T.cool = 0
	end
	_SoundService:PlaySound("69b517263dac4edb8e6f09040177c938", 1)
	local now = _UtilLogic.ElapsedSeconds
	if self._T.cool < now then
		_InventoryUIManager:DataClose()
		_InventoryUIManager:SortItem(_UserService.LocalPlayer, _InventoryUIManager.tab)
		self._T.cool = now + 1
	else
		_MessageLogic:ChatMessage(5, "1초에 1번만 가능합니다.")
	end
elseif _UtilLogic:Contains(name, "inv") then
	_SoundService:PlaySound("4ea19346d0534fb782fd3a2728e927c5", 1)
	_InventoryUIManager:SwitchTab(tonumber(_UtilLogic:SubString(name, 4)))
end
end