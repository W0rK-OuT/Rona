return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	local parent = self.Entity.Parent
	local items
	if parent.Name == "PartnerItems" then
		items = _TradeManager.partnerItems
	else
		items = _TradeManager.items
	end
	local item = items[self.Entity.Name]
	if item == nil then
		_ItemInfoLogic:CloseUI()
		return
	end
    _ItemInfoLogic:OpenUI(item, nil)-- + Vector3(-250, 180, 0))
else
    _ItemInfoLogic:CloseUI()
end
end