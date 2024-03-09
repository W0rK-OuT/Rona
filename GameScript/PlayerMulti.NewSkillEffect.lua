return function (self,skillID,skillLevel,motion,atRate,oriCombo,mobHitCount) 
local mine = _UserService.LocalPlayer
local effectPlayer = self.Entity
local isLeft = effectPlayer.PlayerControllerComponent.LookDirectionX < 0
local sortLayer = effectPlayer.AvatarRendererComponent.SortingLayer
local orderLayer = effectPlayer.AvatarRendererComponent.OrderInLayer

local skillInfo = _SkillInfo:SkillInfo(skillID, skillLevel)
local skillEffect = _SkillEffect:GetSkillEffect(skillID, skillLevel)
local speed = atRate

local specialEffect = skillEffect["specialEffect"]
if _UtilLogic:Contains(specialEffect, "buster") then
	local effect = _SpawnService:SpawnByModelId("model://b0772f33-e05e-462c-a59a-5bcc14adfa46", "busterEffect", Vector3.zero, effectPlayer)
	effect.EffectAlpha.alphas = {
		[0] = {["a0"] = 0, ["a1"] = 255, ["delay"] = 450 / speed},
		[1] = {["a0"] = 255, ["a1"] = 0, ["delay"] = 450 / speed},
	}
	local render = effect.SpriteRendererComponent
	if not isLeft then
		render.FlipX = true
	end
	render.SortingLayer = sortLayer
	render.OrderInLayer = orderLayer
	render.SpriteRUID = "b4d104a07d2448549f072832685a106e"
	effect:Destroy(0.9 / speed)
	
	local effect0 = _SpawnService:SpawnByModelId("model://b0772f33-e05e-462c-a59a-5bcc14adfa46", "busterEffect0", Vector3(isLeft and -0.22 or 0.22, 0.38, 0), effectPlayer)
	effect0.EffectAlpha.alphas = {
		[0] = {["a0"] = 0, ["delay"] = 300 / speed},
		[1] = {["a0"] = 212, ["a1"] = 64, ["delay"] = 200 / speed},
		[2] = {["a0"] = 212, ["a1"] = 64, ["delay"] = 200 / speed},
	}
	effect0.EffectAlpha.scales = {
		[1] = {["z0"] = 100, ["z1"] = 200, ["delay"] = 200 / speed},
		[2] = {["z0"] = 100, ["z1"] = 200, ["delay"] = 200 / speed},
	}
	effect0.SpriteRendererComponent.SpriteRUID = "bb918dcb0055407489ac7585902df1b8"
	effect0:Destroy(0.7 / speed)
	
	local effect1 = _SpawnService:SpawnByModelId("model://b0772f33-e05e-462c-a59a-5bcc14adfa46", "busterEffect1", Vector3.zero, effectPlayer)
	effect1.EffectAlpha.alphas = {
		[0] = {["a0"] = 0, ["delay"] = 600 / speed},
		[1] = {["a0"] = 255, ["delay"] = 30 / speed},
		[2] = {["a1"] = 0, ["delay"] = 200 / speed},
	}
	local render1 = effect1.SpriteRendererComponent
	if not isLeft then
		render1.FlipX = true
	end
	render1.SortingLayer = sortLayer
	render1.OrderInLayer = orderLayer
	render1.SpriteRUID = "9b142c8c81dc4d539e44289e0bd673cb"
	effect1:Destroy(0.83 / speed)
	
	local effect2 = _SpawnService:SpawnByModelId("model://b0772f33-e05e-462c-a59a-5bcc14adfa46", "busterEffect2", Vector3.zero, effectPlayer)
	effect2.EffectAlpha.alphas = {
		[0] = {["a0"] = 0, ["delay"] = 750 / speed},
		[1] = {["a0"] = 255, ["delay"] = 30 / speed},
		[2] = {["a1"] = 0, ["delay"] = 200 / speed},
	}
	local render2 = effect2.SpriteRendererComponent
	if not isLeft then
		render2.FlipX = true
	end
	render2.SortingLayer = sortLayer
	render2.OrderInLayer = orderLayer
	render2.SpriteRUID = "c372eff43f064aef85add517bf3b72b5"
	effect2:Destroy(0.98 / speed)
	
	if specialEffect == "buster2" then
		local effect3 = _SpawnService:SpawnByModelId("model://b0772f33-e05e-462c-a59a-5bcc14adfa46", "busterEffect3", Vector3.zero, effectPlayer)
		effect3.EffectAlpha.alphas = {
			[0] = {["a0"] = 0, ["delay"] = 900 / speed},
			[1] = {["a0"] = 255, ["delay"] = 30 / speed},
			[2] = {["a1"] = 0, ["delay"] = 200 / speed},
		}
		local render3 = effect3.SpriteRendererComponent
		if not isLeft then
			render3.FlipX = true
		end
		render3.SortingLayer = sortLayer
		render3.OrderInLayer = orderLayer
		render3.SpriteRUID = "b76093e23ed942978a2b3e23e3b03e07"
		effect3:Destroy(1.13 / speed)
	end
elseif specialEffect == "thrasher" then
	local func = function()
		local vec
		if motion == "swingP1" then
			vec = Vector2(-1.32, 0.37)
		else
			vec = Vector2(-1.08, 0.39)
		end
		local eff = _SpawnService:SpawnByModelId("model://b0772f33-e05e-462c-a59a-5bcc14adfa46", "busterEffect", Vector3(isLeft and vec.x or -vec.x, vec.y, 0), effectPlayer)
		eff.EffectAlpha.alphas = {
			[0] = {["a1"] = 64, ["delay"] = 200 / speed},
		}
		local render = eff.SpriteRendererComponent
		if not isLeft then
			render.FlipX = true
		end
		render.SortingLayer = sortLayer
		render.OrderInLayer = orderLayer
		render.SpriteRUID = "306805570da84b858c5d3aa198dd97b1"
		eff:Destroy(0.2 / speed)
	end
	_TimerService:SetTimerOnce(func, 0.3 / speed)
	
	local effect = _SpawnService:SpawnByModelId("model://b0772f33-e05e-462c-a59a-5bcc14adfa46", "busterEffect", Vector3(isLeft and -0.05 or 0.05, 0.32, 0), effectPlayer)
	effect.EffectAlpha.alphas = {
		[0] = {["a0"] = 212, ["delay"] = 200 / speed},
	}
	effect.EffectAlpha.scales = {
		[0] = {["z0"] = 100, ["z1"] = 200, ["delay"] = 200 / speed},
	}
	local render = effect.SpriteRendererComponent
	if not isLeft then
		render.FlipX = true
	end
	render.SortingLayer = sortLayer
	render.OrderInLayer = orderLayer
	render.SpriteRUID = "d02a9511181947eea9bc6217175ad210"
	effect:Destroy(0.2 / speed)
	
	local effect0 = _SpawnService:SpawnByModelId("model://b0772f33-e05e-462c-a59a-5bcc14adfa46", "busterEffect0", Vector3(isLeft and -0.04 or 0.04, 0.41, 0), effectPlayer)
	effect0.EffectAlpha.alphas = {
		[0] = {["a0"] = 0, ["delay"] = 300 / speed},
		[1] = {["a0"] = 212, ["a1"] = 64, ["delay"] = 200 / speed},
	}
	effect0.EffectAlpha.scales = {
		[1] = {["z0"] = 100, ["z1"] = 200, ["delay"] = 200 / speed},
	}
	effect0.SpriteRendererComponent.SpriteRUID = "8284613139e1448f823a8489672bfef7"
	effect0:Destroy(0.4 / speed)
elseif specialEffect == "sacrifice" then
	local effect = _SpawnService:SpawnByModelId("model://b0772f33-e05e-462c-a59a-5bcc14adfa46", "busterEffect", Vector3(isLeft and -0.01 or 0.01, 0.73, 1), effectPlayer)
	effect.EffectAlpha.alphas = {
		[0] = {["a0"] = 0, ["a1"] = 255, ["delay"] = 400 / speed},
		[1] = {["a0"] = 212, ["a1"] = 64, ["delay"] = 200 / speed},
	}
	effect.EffectAlpha.scales = {
		[1] = {["z0"] = 100, ["z1"] = 200, ["delay"] = 200 / speed},
	}
	local render = effect.SpriteRendererComponent
	if not isLeft then
		render.FlipX = true
	end
	render.SortingLayer = sortLayer
	render.OrderInLayer = orderLayer
	render.SpriteRUID = "ee9eae2012a6403e86cf02a002c4d23b"
	effect:Destroy(0.6 / speed)
elseif specialEffect == "coma" then
	local ruid
	if oriCombo == 1 then
		ruid = "8f260fa8eb49460691544a8806e80342"
	elseif oriCombo == 2 then
		ruid = "e6eefdb13ca4452ba51437f1bca9d165"
	elseif oriCombo == 3 then
		ruid = "7b5b0596abbd4f44afaa332f11943ebf"
	elseif oriCombo == 4 then
		ruid = "6c60534394bf4fba8a2553528f3f9ec3"
	elseif oriCombo == 5 then
		ruid = "8d638b1a7d5a4fac9de02f4c875ab956"
	elseif oriCombo == 6 then
		ruid = "7805bdc3c28b471fb90fc27b51801d1b"
	elseif oriCombo == 7 then
		ruid = "1e5b27a588564f44ab0ffc30040c1308"
	elseif oriCombo == 8 then
		ruid = "895a0c9854634b88af00e658e2fb5327"
	elseif oriCombo == 9 then
		ruid = "2672e793d7274cb5b8e4daa716671832"
	elseif oriCombo >= 10 then
		ruid = "3f6088e8a7134c5aaa65b4f5ac12e374"
	else
		return
	end
	_EffectService:PlayEffectAttached(ruid, effectPlayer, Vector3.zero, 0, Vector3(isLeft and 1 or -1, 1, 1))
elseif specialEffect == "shockwave" then
	local ruid = "9b47e23edbcf4313ac61bd7ea13bc74b"
	local pos = effectPlayer.TransformComponent.WorldPosition
	
	local func = function()
		for idx = 1, 5 do
			wait(0.15 / speed)
			_EffectService:PlayEffect(ruid, mine, pos + Vector3((isLeft and -1 or 1) * 0.55 * (idx - 1), 0, 0), 0, Vector3(isLeft and 1 or -1, 1, 1), false, {["PlayRate"] = speed})
		end
	end
	_TimerService:SetTimerOnce(func, 1.28)
elseif specialEffect == "rain" then
    --if mobHitCount <= 0 then
    --    return
    --end
	local pos = effectPlayer.TransformComponent.WorldPosition
	local map = mine.CurrentMap
	
	local count = 8
	local duration = 500
	local fall = 150
	local interval = 90
	local x
	local y
	local ruid
	local ruids
	local size = 0
	local startX = 0
	local startY = 0
	local baseDelay = 800
	
	local xRand0 = -200
	local xRand1 = 200
	local yRand0 = 0
	local yRand1 = 50
	local dTime
	
	if skillID == 3111004 then -- 레인
		x = 85
		y = 230
		ruid = "324ee47ffade4e5b8d83cc5f4d6b3827"
		startY = 200
	elseif skillID == 3211004 then -- 이럽션
		x = 0
		y = -150
		ruid = "e1e1ed1ec41e43358040ef5ad04a59d9"
	elseif skillID == 3111003 then -- 파이어 샷
	    if mobHitCount <= 0 then
	        return
	    end
		count = 5
		fall = 400
		x = 105
		y = 130
		ruids = {"f23f72a29759454f9b807a36daba0117", "16a416d423fb4245aa31da0671cabcc9", "b09ca6212efc4348b21653f9d653415d"}
		size = #ruids
		startX = 150
		startY = 150
		baseDelay = 400
	elseif skillID == 3211003 then -- 아이스 샷
	    if mobHitCount <= 0 then
	        return
	    end
		count = 5
		fall = 400
		x = 105
		y = 130
		ruids = {"21af0be8d3fd4dbcbd157a8d01082826", "958fae42f40a417db83ac3ba0823681d", "18efbaa117d84d7ea99924884617e281"}
		size = #ruids
		startX = 150
		startY = 150
		baseDelay = 400
	elseif skillID == 2111002 then -- 익스플로젼
		xRand0 = -150
		xRand1 = 150
		yRand0 = -100
		yRand1 = 150
		x = 0
		y = 0
		ruids = {"85daa67e2b4748df9140ee11059e7ea5", "bbbf4e8df0dc461690413220c6f0f822", "5a78c3c25c084fa59ec383038a540df0"}
		dTime = {580, 580, 350}
		size = #ruids
		count = 6
		duration = 720
		interval = 60
		startX = 0
		baseDelay = 600
	elseif skillID == 2121001 or skillID == 2221001 or skillID == 2321001 then -- 빅뱅
		xRand0 = -75
		xRand1 = 75
		yRand0 = -50
		yRand1 = 100
		x = 0
		y = 0
		
		ruids = {"64a36e9a5c7644a798e75a52d3030e21", "d09bc585a5694011bf65584dd2af02df", "ef968191756e4cddb617d7016cf024c4"}
		dTime = {750, 750, 750}
		size = #ruids
		count = 1
		duration = 900
		interval = 60
		startX = 0
		baseDelay = 200
	end
	
	local func = function()
		local timer = 0
		while timer < duration do
			for idx = 1, count do
				local spawn = _SpawnService:SpawnByModelId("model://31629ffc-110b-4b30-9e18-d3790dc69ed1", specialEffect, Vector3(pos.x + ((isLeft and -startX or startX) + math.random(xRand0, xRand1)) / 100, pos.y + (startY + math.random(yRand0, yRand1)) / 100, 0), map)
				spawn.TransformComponent.Scale.x = isLeft and 1 or -1
				
				local nTime
				if size > 0 then
					local one = math.random(1, size)
					spawn.SpriteRendererComponent.SpriteRUID = ruids[one]
					if dTime ~= nil then
						nTime = dTime[one]
					end
				else
					spawn.SpriteRendererComponent.SpriteRUID = ruid
				end
				
				if nTime == nil then 
					nTime = math.random(0, math.abs(y)) + fall
				end
				
				if x ~= 0 or y ~= 0 then
					_TweenLogic:MoveOffset(spawn, Vector2((isLeft and -1 or 1) * x / 100, -y / 100), nTime / 1000, EaseType.Linear)
				end
				spawn:Destroy(nTime / 1000)
			end
			timer += interval
			wait(interval / 1000)
		end
	end
	_TimerService:SetTimerOnce(func, baseDelay / 1000)
elseif specialEffect == "brandish" then
	if motion == "brandish1" then
		_EffectService:PlayEffectAttached("01d85c7d5bf5407d8b1c95bc2a7f4ae1", effectPlayer, Vector3.zero, 0, Vector3(isLeft and 1 or -1, 1, 1), false, {["PlayRate"] = speed})
	else
		_EffectService:PlayEffectAttached("4edb97db158a48008b79219bc12ca0c1", effectPlayer, Vector3.zero, 0, Vector3(isLeft and 1 or -1, 1, 1), false, {["PlayRate"] = speed})
	end
elseif specialEffect == "airstrike" then
	local pos = effectPlayer.TransformComponent.WorldPosition
	--_EffectService:PlayEffectAttached("2afa28afa1474f008a98be45b25c37b6", effectPlayer, Vector3.zero, 0, Vector3(isLeft and 1 or -1, 1, 1), false, {["PlayRate"] = speed})
	_EffectService:PlayEffect("2917a521730442c69e4f955a329d1b86", effectPlayer, pos, 0, Vector3(isLeft and 1 or -1, 1, 1))
	_EffectService:PlayEffect("bf1fe8875afb40d9829c1ca24132d5fc", effectPlayer, pos, 0, Vector3(isLeft and 1 or -1, 1, 1))
elseif specialEffect == "tile" then
	local mapfh = _UserService.LocalPlayer.CurrentMap.FootholdComponent
	local effectDistance = 180
	
	local pPos = effectPlayer.TransformComponent.WorldPosition
	local startPos = pPos.x - 4
	local endPos = pPos.x + 4
	local topPos = pPos.y + 3.5
	local botPos = pPos.y - 2.5
	
	local ruids
	if skillID == 2121007 then
		ruids = {
			"3d2d26d6025a451cb2ee86f81c3f5c67",
			"4ff70cf57b1742d7aa9c0be30ea87881",
			"6a13c3d0dc334cf7991f6751ee1eecfd",
			"6af9eb7233fe4d2aa4151981c5a212dc",
			"7a06895b1964498a867682c9688492fb",
			"9ddeb5688a21456c8268748a0da5264c",
			"dae60053f27744168340f70ae309dbc7",
			"f0aa22db64814b95937dd9e10a106b74",
			"f10a72f238fd4e629b8c5c0f5b177e0a",
		}
	elseif skillID == 2221007 then
		ruids = {
			"54694e8885434e67a3b5adb87e4d89e2",
			"eaef607c540a421b9ed22292923b3f98",
			"70477fde3aaa43de9ddf769abf68ed06",
			"6a97bd91b49b4fcaa5458ca43be4ebe1",
			"5ca9f6b4ec1c4ebd9a44c5e07371c492",
			"1580375bf29948b8a795547029d3b369",
			"6a4ee36ebd284df8aa8b0a29b25f22d5",
			"32e36bea4af948ff8abb594b789680a7",
			"74d411c48e2b4b9ea362d28d0003b6d5",
		}
	elseif skillID == 2321008 then
		ruids = {
			"5138680bb6e54a21bdb5bf22212cdf82",
			"2a6383bc860c4d44b2ab6dba2f7b7c18",
			"bd8b51ab6895473789be26e498d7733b",
			"6d4eeb300d634b7fa5c6ebb4715b48e1",
			"3d0fcb418e664c479634ee6041e79690",
			"267e698d601d4deb9977a873bfccc14a",
			"d1a651f635b84e7cacfcd3a9db886988",
			"5b2fe2e0b65b4f9ba629db1ee6dd9b0b",
		}
	end
	if ruids == nil then
		return
	end
	local len = #ruids
	local delay = 200
	
	local effFunc = function()
		while true do
			local footList = mapfh:RaycastAll(Vector2(startPos, topPos), Vector2.down, topPos - botPos)
			for _, v in pairs(footList) do
				local y = v:GetYByX(startPos)
				_EffectService:PlayEffect(ruids[math.random(1, len)], _UserService.LocalPlayer, Vector3(startPos, y, 0), 0, Vector3.one)
			end
			startPos += effectDistance / 100
			if startPos >= endPos then
				break
			end
		end
	end
	_TimerService:SetTimerOnce(effFunc, delay / 1000)
elseif specialEffect == "chargeBlow" then
	local attr = effectPlayer.PlayerBuff.incElemAttr
	local ruid
	if attr == 1 then -- 라이트닝
		ruid = "893b9575ad5441979d81fb11281629bf"
	elseif attr == 2 then
		ruid = "aff8c4140c3f4c5db9adb085a40a1f96"
	elseif attr == 3 then -- 얼음
		ruid = "c1ee9fe7eaf4475d82a45d8017a7b6b5"
	else
		ruid = "a81814910cf9476da12bf9305ee99e0e"
	end
	_EffectService:PlayEffectAttached(ruid, effectPlayer, Vector3.zero, 0, Vector3(isLeft and 1 or -1, 1, 1), false, {["PlayRate"] = speed})
elseif specialEffect == "blast" then
	local attr = effectPlayer.PlayerBuff.incElemAttr
	local ruid
	if attr == 1 then
		ruid = "ed88269e9d854d05b9a846d0d7f03819"
	elseif attr == 2 then
		ruid = "e1b243e6c55140a3b9959dbb74af2fde"
	elseif attr == 3 then
		ruid = "48947cbdb1664cafa461e70f0ba26f26"
	elseif attr == 5 then
		ruid = "4605cab74c234f3abcf97acae3f70306"
	else
		ruid = "ade3b62c22084e34b1797d8299171724"
	end
	_EffectService:PlayEffectAttached(ruid, effectPlayer, Vector3.zero, 0, Vector3(isLeft and 1 or -1, 1, 1), false, {["PlayRate"] = speed})
end
end