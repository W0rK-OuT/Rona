return function (self) 
local joyTable = _UserService.LocalPlayer.PlayerKey.mobileOption

local isA = false

local a = _GameUtil:ConvertValue(joyTable["a"], 100)
local x = _GameUtil:ConvertValue(joyTable["x"], 210)
local y = _GameUtil:ConvertValue(joyTable["y"], 130)
local ax = _GameUtil:ConvertValue(joyTable["ax"], 0)

self.main:GetChildByName("ColorA").SliderComponent.Value = a

local uiTrans = self.joyEntity.UITransformComponent

uiTrans.anchoredPosition.x = x
uiTrans.anchoredPosition.y = y

if ax == 0 then
	self.joyEntity.JoystickComponent.Axis = AxisType.Axis_8
else
	self.joyEntity.JoystickComponent.Axis = AxisType.Axis_4
end
end