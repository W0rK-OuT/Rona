return function (self,timer) 
self.timer = timer
if timer >= 3600 then
    self.isHour = true
    self.Entity.SpriteGUIRendererComponent.ImageRUID = "a777b1af41234baf8422364406bc3464"
else
    self.Entity.SpriteGUIRendererComponent.ImageRUID = "10715bf47e324653ad14519dcee4b5d2"
end
end