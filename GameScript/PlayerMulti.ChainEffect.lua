return function (self,chainType,monsters,atRate,skillEffect) 
local baseDelay = _GameUtil:ConvertValue(skillEffect["baseDelay"], 300)
local nextHitDelay = _GameUtil:ConvertValue(skillEffect["nextHitDelay"], 75)

local mine = _UserService.LocalPlayer
local map = mine.CurrentMap
local player = self.Entity
local pos = player.TransformComponent.WorldPosition

local func = function()	
	if chainType == 1 then
		local effects = {"936ac00509a847589404508349b522c6", "dcf0e1334023413a9cf498f18e119d11", "1f301e0916f1490d8286330a84ba8003"}
		local effectLen = #effects
		local size = 0.4
		local startPos = Vector2(pos.x, pos.y + 0.3)
		for _, v in pairs(monsters) do
			---@type Entity
			local monster = v
			if not isvalid(monster) then
				continue
			end
			---@type Vector2
			local nextPos = monster.TransformComponent.WorldPosition:ToVector2() + monster.TriggerComponent.ColliderOffset
			local ddd = math.atan(nextPos.y - startPos.y, nextPos.x - startPos.x) * 180 / math.pi
			
			local m = (nextPos.y - startPos.y) / (nextPos.x - startPos.x)
			local b = startPos.y - m * startPos.x
			--local y = m * x + b
			
			local isLeft = startPos.x < nextPos.x
			
			for idx = 1, 100 do
				local x = startPos.x + idx * size * (isLeft and 1 or -1)
				local y = m * x + b
				if idx > 1 then
					if isLeft then
						if x > nextPos.x then
	                        --local dis = math.abs(nextPos.x - startPos.x) / size
	                        --_EffectService:PlayEffect(effects[math.random(1, effectLen)], mine, Vector3(x, y, 0), ddd, Vector3(dis, 1, 1))
							break
						end
					else
						if x < nextPos.x then
	                        --local dis = math.abs(nextPos.x - startPos.x) / size
	                        --_EffectService:PlayEffect(effects[math.random(1, effectLen)], mine, Vector3(x, y, 0), ddd, Vector3(dis, 1, 1))
							break
						end
					end
				end
				_EffectService:PlayEffect(effects[math.random(1, effectLen)], mine, Vector3(x, y, 0), ddd, Vector3.one)
			end
			_EffectService:PlayEffect("1c73b44494124b919e4d4509d1bb6efe", mine, nextPos:ToVector3(), 0, Vector3.one)
		
			startPos.x = nextPos.x
			startPos.y = nextPos.y
			wait(nextHitDelay / 1000 / atRate)
		end
	elseif chainType == 2 then
		local spawn = _SpawnService:SpawnByModelId("model://31629ffc-110b-4b30-9e18-d3790dc69ed1", "ball", Vector3(pos.x, pos.y + 0.3, 0), map)
		spawn.SpriteRendererComponent.SpriteRUID = "6b0a100e41eb45ccab303ce074f69a22"
		
		for _, v in pairs(monsters) do
			---@type Entity
			local monster = v
			if not isvalid(monster) then
				continue
			end
			---@type Vector2
			local nextPos = monster.TransformComponent.WorldPosition:ToVector2() + monster.TriggerComponent.ColliderOffset
			_TweenLogic:MoveTo(spawn, nextPos, 0.2 / atRate, EaseType.Linear)
			wait(nextHitDelay / 1000 / atRate)
			_EffectService:PlayEffect("d7704217d8f547c1825d48d36aaa45f8", mine, nextPos:ToVector3(), 0, Vector3.one)
		end
		spawn:Destroy()
	end
end
_TimerService:SetTimerOnce(func, baseDelay / 1000 / atRate)
end