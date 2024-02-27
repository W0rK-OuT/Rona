return function (self,damage) 
if damage < 0 then
	return
end

local targetPos = self.Entity.TransformComponent.WorldPosition
local player = _UserService.LocalPlayer

if damage == 0 then
	local miss = _SpawnService:SpawnByModelId("model://1a45a863-2974-4730-9e4a-7b13a0066c3b", "hitDamage", targetPos + Vector3(0, 1, 0), player.CurrentMap)
	miss.SpriteRendererComponent.SpriteRUID = "7ca8aea9b9bf4907b931ddc1c32dfa09"
	_TweenLogic:MoveOffset(miss, Vector2(0, 0.3), 1.1, EaseType.Linear)
	
	---@type Tweener
	local tween
	local color = miss.SpriteRendererComponent.Color
	local tweenFunc = function(tweenValue)
		color.a = tweenValue
	end
	tween = _TweenLogic:PlayTween(1, 0, 1, EaseType.BackEaseIn, tweenFunc)
	
	miss:Destroy(1.5)
else
	local xPos = 0.2
	
	local str = tostring(damage)
	local len = #str
	
	for idx = 1, len do

		local calPos
		if len % 2 == 1 then
			calPos = xPos * (idx - 1) - math.floor(len / 2) * xPos
		else
			calPos = xPos * (idx - 1) - math.floor((len - 2) / 2) * xPos - xPos / 2
		end
		
		local calY
		if idx % 2 == 1 then
			calY = 0
		else
			calY = 0.05
		end
		
		local strValue = tonumber(_UtilLogic:SubString(str, idx, 1))
		local ruid
		if idx == 1 then
			ruid = _PlayerHitByMonster.damBigSkin[strValue]
		else
			ruid = _PlayerHitByMonster.damSkin[strValue]
		end
		local entity = _SpawnService:SpawnByModelId("model://1a45a863-2974-4730-9e4a-7b13a0066c3b", "hitDamage", targetPos + Vector3(calPos, 1.1 - calY, -idx * 0.001), player.CurrentMap)
		
		entity.SpriteRendererComponent.SpriteRUID = ruid
		_TweenLogic:MoveOffset(entity, Vector2(0, 0.3), 1.1, EaseType.Linear)
		
		---@type Tweener
		local tween
		local color = entity.SpriteRendererComponent.Color
		local tweenFunc = function(tweenValue)
			color.a = tweenValue
		end
		tween = _TweenLogic:PlayTween(1, 0, 1, EaseType.BackEaseIn, tweenFunc)
		
		entity:Destroy(1.5)
	end
	
	--_DamageSkinService:Play(player, "4251267325a045559695f3fb58476815", 0.05, {damage}, DamageSkinTweenType.Default, false)
end
end