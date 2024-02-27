return function (self,newCount) 
local oriCount = self.count
self.count = newCount

local zero = self.Entity:GetChildByName("Main")
if newCount == 0 then
	for _, v in pairs(self.child.Children) do
		local color = v.SpriteRendererComponent.Color
		if color.a > 0 then
			local tweenAlpha = function(tweenValue)
				color.a = tweenValue
			end
			_TweenLogic:PlayTween(color.a, 0, 0.3, EaseType.Linear, tweenAlpha)
		end
	end
	local color = zero.SpriteRendererComponent.Color
	local tweenAlpha = function(tweenValue)
		color.a = tweenValue
	end
	_TweenLogic:PlayTween(color.a, 0, 0.3, EaseType.Linear, tweenAlpha)
	return
end

if newCount <= 5 then
	zero.SpriteRendererComponent.SpriteRUID = "9cfc22d7db1842608b648d9d7b5d216e"
	zero.SpriteRendererComponent.Color.a = 1
	for idx = 1, 5 do
		local find = self.child:GetChildByName("" .. idx)
		local colorA = idx < newCount and 1 or 0
		find.SpriteRendererComponent.Color.a = colorA
		
		if idx == 1 then
			find.SpriteRendererComponent.SpriteRUID = "594f34c4103145a28951780047e71e42"
		elseif idx == 2 then
			find.SpriteRendererComponent.SpriteRUID = "eefe86c8b370407aa16c9fe34f12c98d"
		elseif idx == 3 then
			find.SpriteRendererComponent.SpriteRUID = "dfb6702ddc994b8b8b24acf3c695020b"
		elseif idx == 4 then
			find.SpriteRendererComponent.SpriteRUID = "18b94fa75cc54db0a806f522564ba449"
		else
			find.SpriteRendererComponent.SpriteRUID = "1c603235dffd468f8b28b36aa8cb3df2"
		end
		
		if idx == newCount then
			local scale = find.TransformComponent.Scale
			scale.x = 3
			scale.y = 3
			local color = find.SpriteRendererComponent.Color
			local tweenAlpha = function(tweenValue)
				color.a = tweenValue
			end
			_TweenLogic:PlayTween(64 / 255, 1, 0.3, EaseType.Linear, tweenAlpha)
			_TweenLogic:ScaleTo(find, Vector2(1, 1), 0.3, EaseType.Linear)
		end
	end
elseif newCount <= 10 then
	zero.SpriteRendererComponent.SpriteRUID = "5f5348ebeb2345f0869d1682828a848d"
	zero.SpriteRendererComponent.Color.a = 1
	for idx = 1, 5 do
		local find = self.child:GetChildByName("" .. idx)
		find.SpriteRendererComponent.Color.a = 1
		
		if idx == 1 then
			find.SpriteRendererComponent.SpriteRUID = "4711c880fffd4da694871cf1fe331e7d"
		elseif idx == 2 then
			if newCount < 7 then
				find.SpriteRendererComponent.SpriteRUID = "eefe86c8b370407aa16c9fe34f12c98d"
			else
				find.SpriteRendererComponent.SpriteRUID = "8abd73b1954e42f5af565af4426ae582"
			end
		elseif idx == 3 then
			if newCount < 8 then
				find.SpriteRendererComponent.SpriteRUID = "dfb6702ddc994b8b8b24acf3c695020b"
			else
				find.SpriteRendererComponent.SpriteRUID = "eaede9190e7f48e5a78123777220ebbf"
			end
		elseif idx == 4 then
			if newCount < 9 then
				find.SpriteRendererComponent.SpriteRUID = "18b94fa75cc54db0a806f522564ba449"
			else
				find.SpriteRendererComponent.SpriteRUID = "6360c35bf2ad47b0b68235182c063f80"
			end
		else
			if newCount < 10 then
				find.SpriteRendererComponent.SpriteRUID = "1c603235dffd468f8b28b36aa8cb3df2"
			else
				find.SpriteRendererComponent.SpriteRUID = "45c5effa123f463296b9c861fe017215"
			end
		end
		
		if idx == newCount - 5 then
			local scale = find.TransformComponent.Scale
			scale.x = 3
			scale.y = 3
			local color = find.SpriteRendererComponent.Color
			local tweenAlpha = function(tweenValue)
				color.a = tweenValue
			end
			_TweenLogic:PlayTween(64 / 255, 1, 0.3, EaseType.Linear, tweenAlpha)
			_TweenLogic:ScaleTo(find, Vector2(1, 1), 0.3, EaseType.Linear)
		end
	end
end
end