return function (self) 
local player = self.Entity.Parent
local arc = player.AvatarRendererComponent
local src = self.Entity.SpriteRendererComponent

src.SortingLayer = arc.SortingLayer
src.OrderInLayer = arc.OrderInLayer == 0 and 3 or arc.OrderInLayer 
end