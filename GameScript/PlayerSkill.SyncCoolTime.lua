return function (self,skillID,now,nextTime) 
self.coolTime[skillID] = {now, nextTime}
_PlayerKeyLogic:CalcCoolTime()
end