return function (self,msg) 
if _UtilLogic:Contains(msg, "#L") then
	self:SendSimple(msg)
else
	self:TalkType(msg, 2)
end
end