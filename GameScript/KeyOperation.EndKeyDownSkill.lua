return function (self,id) 
self.keyDonwID = 0
local now = _UtilLogic.ServerElapsedSeconds
local charge = math.floor(_Gagebar:EndBar() / _Gagebar.maxValue * 100)
if charge < 1 then
	charge = 1
elseif charge > 100 then
	charge = 100
end
_RaidManager:Gain(id, now, 0, charge)
end