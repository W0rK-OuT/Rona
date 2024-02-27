return function (self,itemID,slot) 
self.itemID = itemID
self.slot = slot
local name = _ItemData:GetItem(itemID)["name"]
self.main:GetChildByName("Text").TextComponent.Text = "'" .. name .. "'\n정말로 사용하시겠습니까?"
self.main:SetEnable(true)
_UIManager:Add(self.main)
end