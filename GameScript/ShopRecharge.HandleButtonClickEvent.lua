return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "Yes" then
	_ShopUILogic:Recharge(_UserService.LocalPlayer, _ShopUILogic.rechargeSlot)
	_ShopUILogic:CloseRecharge()
elseif name == "No" then
	_ShopUILogic:CloseRecharge()
elseif name == "Recharge" then
	local slot = Entity.Parent:GetChildByName("slot")
	if slot ~= nil then
		local findSlot = slot.TextComponent.Text
		if _UtilLogic:IsNilorEmptyString(findSlot) then
			return
		end
		_ShopUILogic:OpenRecharge(findSlot)
	end
end
end