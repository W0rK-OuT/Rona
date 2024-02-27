return function (self,data,text) 
local ruids = {}
for k, v in pairs(data) do
	table.insert(ruids, v)
end

local block = self.main:GetChildByName("Block")
block.UITransformComponent.anchoredPosition.y = 0

--local call = function()
	self.main:GetChildByName("Text").TextComponent.Text = text
	for k, v in pairs(data) do
		local entity = self.main:GetChildByName("" .. k)
	
		if self.isNumber then
			entity:GetChildByName("number").TextComponent.Text = v
		else
			entity:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = v
		end
	end
	
	local color = block.SpriteGUIRendererComponent.Color
	color.a = 0.4
	block:SetEnable(true)
	local func = function()
		local tweenFunc = function(tweenValue)
			color.a = tweenValue
		end
		_TweenLogic:PlayTween(0.4, 0, 1, EaseType.Linear, tweenFunc)
		wait(1)
		block.UITransformComponent.anchoredPosition.y = 300
		block:SetEnable(false)
	end
	_TimerService:SetTimerOnce(func, 3)
	
	self.main:SetEnable(true)
--end

--_ResourceService:PreloadAsync(ruids, call)
end