return function (self,player,value) 
local ar = player.AvatarRendererComponent
if value == 0 then
	ar:SetAlpha(1)
else
	ar:SetAlpha(0.6)
end
end