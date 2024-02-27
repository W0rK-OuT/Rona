return function (self) 
self:AutoStatDistribution(_UserService.LocalPlayer, self.autoType)
self:CloseAtuoStat() -- 순서 중요 <close 하면 autoType 0>
end