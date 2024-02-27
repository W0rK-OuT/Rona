return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
_PlayerInventoryUILogic:ClickItem(name)
--if self.delay < _UtilLogic.ServerElapsedSeconds then
--    self.delay = _UtilLogic.ServerElapsedSeconds + 0.2
--    _PlayerInventoryUILogic:ClickItem(name)
--    return
--end
--_PlayerInventoryUILogic:DoubleClickItem(name)
end