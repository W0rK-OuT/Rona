return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
if state == ButtonState.Hover or state == ButtonState.Pressed then
	if self.name == "exp" then
		if isvalid(_UserService.LocalPlayer) then
			local stat = _UserService.LocalPlayer.PlayerStats
			local lv = stat.level
			local exp = stat.exp
			_BaseTextManager:OpenUI("EXP : " .. exp .. " / " .. _GameUtil:NeedExp(lv))
		end
	end
else
	_BaseTextManager:CloseUI()
end
end