return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
if self.sub then
	self.sub = false
else
	local item = _CreateItemManager.main:GetChildByName("Item").CreateItemItem
	_CreateItemManager:Change(_UserService.LocalPlayer, item.tab, item.slot, self.Entity.Parent.Name, tonumber(text))
end
self.Entity.TextInputComponent.Text = ""
end