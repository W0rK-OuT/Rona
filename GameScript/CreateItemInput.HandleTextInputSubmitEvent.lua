return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
self.sub = true
local item = _CreateItemManager.main:GetChildByName("Item").CreateItemItem
_CreateItemManager:Change(_UserService.LocalPlayer, item.tab, item.slot, self.Entity.Parent.Name, tonumber(Text))
end