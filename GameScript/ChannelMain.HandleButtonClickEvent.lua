return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
_ChannelChange:ButtonClick(self.id, self.currentUserCount, self.maxUserCount)
end