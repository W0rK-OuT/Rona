return function (self) 
if self:IsClient() then
	self.summonData[1321007] = {
		["stand"] = "7dc480b6afcf40858f3431cf5879a51a",
		["die"] = "043253a067dc4d4eab6c0b2a5993a4c6",
		["summon"] = "8dafb060a6cd41299bf3b04c2bcf4df7",
		
		["skill1"] = "468482e6a7fc47c5b18e8968e2fda024",
		["skill2"] = "e1ce750aaf9c4fa0958e0e33d1296f0c",
		["skill3"] = "3644e637557344ca9761bd9e069f1abc",
		["skill4"] = "203649ac8b7a4a508d0e1419142429c9",
		["skill5"] = "d4351cd2df2747e6bd06f690ca069ed5",
		["skill6"] = "e8be8fc7d39e4d0fa4f5077c747f5969",
	}
	self.summonData[2311006] = {
		["stand"] = "6783f9478e6243508f31d3eb6968a080",
		["die"] = "724f54f993074ff887de0538642af44f",
		["summon"] = "0bbcf1f484c54b1e97e346275a29d91a",
		["attack1"] = "9ed19801eba04902932d21609faad3af",
	}
	self.summonData[2121005] = {
		["stand"] = "340a48bedc1d43819c9cddfef8346dea",
		["die"] = "4df83f82b69543308fc6696db844db41",
		["summon"] = "a6732b2666f04f39a0c268ca377fc3a6",
		["attack1"] = "f94de607b6c94bb493cf97a2fb7f5763",
	}
	self.summonData[2221005] = {
		["stand"] = "de9f21c655ab4eab89f22d58da2c5b9f",
		["die"] = "a687453177ab41fbb8a0bd44de4c85c2",
		["summon"] = "863a134725ff4e7aa7d837063fc01ea8",
		["attack1"] = "4787aa0516114511b9f3e14bed3b8cea",
	}
	self.summonData[2321003] = {
		["stand"] = "cd1e81bc3ec6489493c975104baeb11f",
		["die"] = "7f99973027104e8faf990c3df8a3e399",
		["summon"] = "1893abede5144badb78ba2392106a7e9",
		["attack1"] = "7e641f9ee56243cea180d5ae1d91b6ed",
	}
	self.summonData[3111005] = {
		["stand"] = "2124253c44584f889a52adbd991622e0",
		["die"] = "87005bc562ea44e1a5238726f4d43a3e",
		["summon"] = "012b415aec1f4ec8a7af612eef476ef1",
		["attack1"] = "ff2a4104ba7941c79a63a872779f4900",
	}
	self.summonData[3211005] = {
		["stand"] = "8ed0f44c9c514c03b6765185bd22595b",
		["die"] = "99551a7d9cc44b97bc5d8321da8fdb47",
		["summon"] = "9a9ebf96a194469bbe34971fb208c098",
		["attack1"] = "237f36fad93c4223b7b72c2fedf6b424",
	}
	self.summonData[3121006] = {
		["stand"] = "922fa176488740c0b4c74fdd30d45f33",
		["die"] = "f5ade829a1f14203b22b0c665f405a1b",
		["summon"] = "a09d9772cc4c4cecb4138862b36d089e",
		["attack1"] = "bba6eede1f3d455eb6691faf8cabcc76",
	}
	self.summonData[3221005] = {
		["stand"] = "f6e3a35eb63d4cafa6d9b51bdd9acf5e",
		["die"] = "6fdef2820b79444e99715702d3ac50de",
		["summon"] = "09a31174fb4a4ff19d12b41bc86dc41d",
		["attack1"] = "39b20dda8965438b8bb93e9c98c30355",
	}
	self.summonData[5211001] = {
		["stand"] = "e1dacab937734173a07af825a06c6abf",
		["die"] = "2d06494fa35546baa9cf9b37e94c4e83",
		["summon"] = "95b3e33d1e3f4bccaa6ae82310109e2a",
		["attack1"] = "f7b85472568d48f3a49d96c3c102a446",
	}
	self.summonData[5211002] = {
		["stand"] = "73dd23ab73d2443db0cdfc19ed355d57",
		["die"] = "51825625cacd4cc5b0110a7c4183ae23",
		["summon"] = "6657c6a249044d359f0a20fbebb35f3b",
		["attack1"] = "855491735a434458adb34092d59f9047",
	}
	self.summonData[5220002] = {
		["stand"] = "18e29a4370504726972fade5b048dd6a",
		["die"] = "7668275d8d2247c58319c2e018f96060",
		["summon"] = "638d036d2cb44f269b80fadbbb7f2603",
		["attack1"] = "8f8bdd87eae6430588a35518866ef08f",
		["attack2"] = "49ec7b46bb9843f6bec23a34dd69b7ad",
	}
	
	local func = function()
		for _, v in pairs(self.summonData) do
			local ruid = v["summon"]
			if not _UtilLogic:IsNilorEmptyString(ruid) then
				local ani = _ResourceService:LoadAnimationClipAndWait(ruid)
				local size = ani.Frames.Count
				local totFrame = 0
				for i = 1, size do
					local frame = ani.Frames[i]
					totFrame += frame.Delay
				end
				v["summonFrame"] = totFrame
			end
		end
	end
	_TimerService:SetTimerOnce(func, 0)
end
self.summonAttack[2311006] = {
	["range"] = {
		["lt"] = Vector2(-200, -150),
		["rb"] = Vector2(200, 150),
		["sp"] = Vector2(-24, -37),
		["r"] = 270,
	},
	
	["hit"] = "1822739ba5c64e3ebcc6ff4654e9b70b",
}
self.summonAttack[2121005] = {
	["attackAfter"] = 1080,
	["range"] = {
		["lt"] = Vector2(-200, -150),
		["rb"] = Vector2(200, 150),
		["r"] = 400, -- 추측
	},
	
	["hit"] = "563e3314a05948a3af46d0af91ea3375",
}
self.summonAttack[2221005] = {
	["attackAfter"] = 1080,
	["range"] = {
		["lt"] = Vector2(-200, -150),
		["rb"] = Vector2(200, 150),
		["r"] = 400, -- 추측
	},
	
	["hit"] = "3c541f98fcbb485987cb92c92fd820a6",
}
self.summonAttack[2321003] = {
	["attackAfter"] = 990,
	["range"] = {
		["lt"] = Vector2(-200, -150),
		["rb"] = Vector2(200, 150),
		["r"] = 400, -- 추측
	},
	
	["hit"] = "598a38c6f7d747b9aedf97c18dad6dc7",
}
self.summonAttack[3111005] = {
	["attackAfter"] = 100,
	["effectAfter"] = 600,
	["range"] = {
		["lt"] = Vector2(-200, -150),
		["rb"] = Vector2(200, 150),
		["sp"] = Vector2(-24, -37),
		["r"] = 270,
	},
	
	["effect"] = "7c86e9b313074239973c35c52a9d8568",
	["hit"] = "3e324d0647364dc39070ed02b64f870d",
}
self.summonAttack[3211005] = {
	["attackAfter"] = 100,
	["effectAfter"] = 600,
	["range"] = {
		["lt"] = Vector2(-200, -150),
		["rb"] = Vector2(200, 150),
		["sp"] = Vector2(-24, -37),
		["r"] = 270,
	},
	
	["effect"] = "7c86e9b313074239973c35c52a9d8568",
	["hit"] = "4ea3891eb31d4708b06de33a04b031f4",
}
self.summonAttack[3121006] = {
	["attackAfter"] = 360,
	["range"] = {
		["lt"] = Vector2(-100, -60),
		["rb"] = Vector2(100, 60),
		["sp"] = Vector2(-24, -37),
		["r"] = 270,
	},
	
	["effect"] = "43a18ef761724c75b8e79049200a8dd9",
	["hit"] = "e86fc916667d4e91b0c8b43c2fb83ee2",
}
self.summonAttack[3221005] = {
	["attackAfter"] = 1440,
	["range"] = {
		["lt"] = Vector2(-100, -60),
		["rb"] = Vector2(100, 60),
		["sp"] = Vector2(-24, -37),
		["r"] = 270,
	},
	
	["effect"] = "272d1708a9424b46821eca3b54510073",
	["hit"] = "7a6280906bc140a6a7b62f8bd3d1017c",
}
self.summonAttack[5211001] = {
	["attackAfter"] = 480,
	["bulletSpeed"] = 300,
	["range"] = {
		["sp"] = Vector2(-23, -18),
		["r"] = 300,
	},
	
	["ball"] = "d4e071b641b340479b1153d33ae9cd3c",
	["hit"] = "1d057a6086e342659838d3601d14ad5d",
}
self.summonAttack[5211002] = {
	["attackAfter"] = 1920,
	["range"] = {
		["lt"] = Vector2(-80, -60),
		["rb"] = Vector2(80, 60),
		["sp"] = Vector2(-14, -29),
		["r"] = 400,
	},
	
	["firstEffect"] = {"77c94be5c53140858474516e4d2b881d", 1080},
	["hit"] = "af8386c464b9460e8bed936da773c28b",	
}
self.summonAttack[5220002] = {
	["attackAfter"] = 480,
	["bulletSpeed"] = 300,
	["range"] = {
		["sp"] = Vector2(-23, -18),
		["r"] = 300,
	},
	
	["ball"] = "d4e071b641b340479b1153d33ae9cd3c",
	["hit"] = "1d057a6086e342659838d3601d14ad5d",
}
end