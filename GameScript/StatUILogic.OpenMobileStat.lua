return function (self) 
table.clear(self.mobileStats)

self.mobileStats["ap"] = _UserService.LocalPlayer.PlayerStats.ap
self.mobileStats["str"] = 0
self.mobileStats["dex"] = 0
self.mobileStats["int"] = 0
self.mobileStats["luk"] = 0

self.distribution:SetEnable(false)
self.mobileDistribution:SetEnable(true)

self:UpdateMobileStat()
end