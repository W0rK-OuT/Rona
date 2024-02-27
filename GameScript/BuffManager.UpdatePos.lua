return function (self) 
if _BossHpManager.main.Enable then
	self.main.UITransformComponent.anchoredPosition.y = -50
else
	self.main.UITransformComponent.anchoredPosition.y = -10
end
end