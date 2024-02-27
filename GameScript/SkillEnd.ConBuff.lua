return function (self,player,conBuff) 
if conBuff == "incElemAttr" then
	return player.PlayerBuff.incElemAttr > 0
end
return false
end