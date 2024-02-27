return function (self) 
self.clone:SetEnable(true)
_UIManager:Add(self.clone)

local items = self.items
items["gender"] = 1
items["top"] = 1
items["bot"] = 1
items["shoes"] = 1
items["weapon"] = 1
self:UpdateUI()
end