return function (self,dir,dieTime) 
self.dir.x = dir.x
self.dir.y = dir.y

self.start = true
self.Entity:Destroy(dieTime)
end