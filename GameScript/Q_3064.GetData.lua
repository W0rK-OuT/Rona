return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012018,
	["lvmin"] = 35,
	["quest"] = {{["id"] = 3063, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2012018,
	["item"] = {{["id"] = 4000073, ["count"] = 50}},
	["mob"] = {
		[1] = {["id"] = 3210200, ["count"] = 50},
		[2] = {["id"] = 3210201, ["count"] = 50},
		[3] = {["id"] = 3210202, ["count"] = 50}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 10000,
	["item"] = {
		{["id"] = 2048002, ["count"] = 1, ["prop"] = 3},
		{["id"] = 2048001, ["count"] = 1, ["prop"] = 7},
		{["id"] = 4000073, ["count"] = -50}
	},
}
nTable["info"] = {
	["name"] = "네로를 지켜라",
	["0"] = "오르비스 공원에 있는 #p2012018#아저씨를 찾아가보자.",
	["1"] = "오르비스 근처의 몬스터들이 네로를 괴롭힌다면서 #p2012018#아저씨가 화를 많이 내셨다. 그러면서 네로를 괴롭힌 몬스터들을 혼내달라면서 #b#o3210200# 50마리, #o3210201# 50마리, #o3210202# 50마리#k를 퇴치하고 #b#t4000073# 50개#k를 가져와 달라고 부탁했다.\n\n#i4000073##t4000073#  #b#c4000073##k / 50\n\n#o3210200#  #r#a30641#\n#k#o3210201#  #r#a30642#\n#k#o3210202#  #r#a30643#",
	["2"] = "오르비스 주변에 살고 있는 몬스터들이 에릭손 아저씨의 애완고양이 네로를 괴롭힌다는 말을 듣고 아저씨의 부탁으로 몬스터들을 혼내줬다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "아, 오랫만이야. 그 동안 여행은 즐거웠나? 난 요즘 오르비스 근처에 사는 못된 몬스터들 때문에 속상해 죽겠어. 우리 네로가 혼자 놀러나갈 때마다 나타나서 괴롭혀서 우리 사랑스런 네로가 잔뜩 겁에 질려버렸다구. 못된 몬스터들 같으니라구!", ["2"] = "이대로 두었다간 우리 네로가 상처투성이가 되겠어. 자네 내 부탁을 들어주지 않겠나? 내가 보답은 섭섭치 않게 해주겠네."},
	["yes"] = {["1"] = "오르비스근처에 살고 있는 몬스터들의 수를 좀 줄여줘. 우리 네로가 맘 편히 놀러다닐 수 있게 말야. 요즘 #b#o3210200#, #o3210201#, #o3210202##k 이 세종류의 몬스터들이 수가 많이 늘어났다더군. 우리 네로를 공격하는 것도 이녀석들일거야. 이 3종류의 몬스터들을 각각 #b50마리#k씩 잡아주게. 그리고 그 증거로 #b#t4000073# 50개#k도 가져와주게."},
	["no"] = {["1"] = "우리 네로를 봐서라도 내 부탁을 들어주지 않겠나? 이 상처투성이가 된 모습을 보라구. 자네 눈에는 우리 네로가 불쌍하지도 않나?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "이야아~ 자네 돌아왔군. 자네 덕분인지 부쩍 몬스터가 줄어든 느낌이야. 네로의 상처도 많이 나았다네. 다 자네 덕분이야. 고맙네. 우리 네로도 이제 맘껏 뛰어놀 수 있겠어. 정말 다행이야."},
	["yes"] = {["1"] = "주문서는 잘 받았나? 펫을 기르는 사람들에게 유용한 물건이지. 자네에게도 우리 네로처럼 귀여운 펫이 있다면 그 주문서를 유용하게 써보게나."},
	["stop"] = {
		["item"] = {["1"] = "아직아직 부족해. 아직도 몬스터들이 눈에 많이 띄는 것 같아. 이것 보라구 우리 네로가 아직도 무서워서 덜덜 떨고 있잖아. #b#o3210200#, #o3210201#, #o3210202##k를 #b50마리#k 씩 다 잡은 후에 돌아오게. 물론 #b#t4000073# 50개#k도 잊지말고 가져오게."},
		["mob"] = {["1"] = "아직아직 부족해. 아직도 몬스터들이 눈에 많이 띄는 것 같아. 이것 보라구 우리 네로가 아직도 무서워서 덜덜 떨고 있잖아. #b#o3210200#, #o3210201#, #o3210202##k를 #b50마리#k 씩 다 잡은 후에 돌아오게. 물론 #b#t4000073# 50개#k도 잊지말고 가져오게."},
	},
}
return nTable
end