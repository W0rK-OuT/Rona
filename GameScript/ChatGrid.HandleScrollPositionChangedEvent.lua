return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: GridViewComponent
-- Space: Client
---------------------------------------------------------
-- Sender: ScrollLayoutGroupComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local NormalizedPosition = event.NormalizedPosition
---------------------------------------------------------
local y = NormalizedPosition.y
if _ChatManager.totalCount < _ChatManager.maxCount then
    self.downInfo:SetEnable(false)
    return
end
if y < 1 then
    self.downInfo:SetEnable(true)
else
    self.downInfo:SetEnable(false)
end
end