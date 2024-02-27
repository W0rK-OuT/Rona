return function (self,anyKey,hold) 
if self.keyDonwID > 0 then
	return
end
if self.rapidID > 0 then
	return
end
if self.openShopAndNpc then
	return
end

---@type KeyboardKey
local key = anyKey
if key == KeyboardKey.RightAlt then
	key = KeyboardKey.LeftAlt
elseif key == KeyboardKey.RightControl then
	key = KeyboardKey.LeftControl
elseif key == KeyboardKey.RightShift then
	key = KeyboardKey.LeftShift
end

local value = _PlayerKeyLogic.holdKey[key]
local darkSight = _UserService.LocalPlayer.PlayerBuff.darkSight
if darkSight > 0 and value ~= "S-4221001" then
	if _PlayerWeather.stun then
		return
	end
	if value == "S-0" then
		_CoolTime.attackDelay = -0.24
		_UserService.LocalPlayer.PlayerBuff.darkSight = 0
		_PlayerBuffLogic:UpdateDarkSight(_UserService.LocalPlayer, 0)
		_UserService.LocalPlayer.PlayerBuff:CancelBuffToServer(darkSight)
		_SkillBuff:EffectAndSound("be18b6cf4ef54178b6bd2bde33bddd27", "14850c1b9eb941e9879cc9085b4e3bdc", _UserService.LocalPlayer.MovementComponent:IsFaceLeft())
	end
	return
end

if key == KeyboardKey.Keypad0 then
	if _CoolTime.roofDelay >= 0 then
		_CoolTime.roofDelay = -0.12
		_PlayerRoof:ItemRoof()
	end
	return
end

if value ~= nil then
	if not hold then
		_SkillMove.lastNum = 0
	end
	if value == "C-Roof" then
		if _CoolTime.roofDelay >= 0 then
			_CoolTime.roofDelay = -0.12
			_PlayerRoof:ItemRoof()
		end
	else
		local id = tonumber(string.sub(value, 3))
		if _UtilLogic:Contains(value, "S") then
			self:ActionSkill(id)
		else
			if _CoolTime.itemDelay >= 0 then
				_CoolTime.itemDelay = -0.2
				_CoolTime.itemToPortalDelay = _UtilLogic.ElapsedSeconds + 0.23
				self:ActionItem(id)
			end
		end
	end
end
end