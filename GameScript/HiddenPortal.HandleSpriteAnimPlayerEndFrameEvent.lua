return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ClimbableSpriteRendererComponent
-- Space: Client
---------------------------------------------------------
-- Sender: SpriteRendererComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local FrameIndex = event.FrameIndex
local ReversePlaying = event.ReversePlaying
local TotalFrameCount = event.TotalFrameCount
local AnimPlayer = event.AnimPlayer
---------------------------------------------------------
if self.state == 1 then
	self.Entity.SpriteRendererComponent.SpriteRUID = self.stateRUID
elseif self.state == 2 then
	self.Entity:SetVisible(false)
	self.Entity.SpriteRendererComponent.SpriteRUID = self.stateRUID
	self.state = 3
end
end