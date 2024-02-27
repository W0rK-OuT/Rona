return function (self,r,monster) 
self.monster = monster
local x = r * 100 / self.speed
self.Entity:Destroy(x / 100)
end