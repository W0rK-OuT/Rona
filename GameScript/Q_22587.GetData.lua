return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2092001,
	["lvmin"] = 70,
	["interval"] = 0,
	["quest"] = {{["id"] = 22586, ["state"] = 1}},
	["item"] = {{["id"] = 4032472}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 2092001,
	["mob"] = {
		[1] = {["id"] = 7130104, ["count"] = 100},
		[2] = {["id"] = 6130208, ["count"] = 100}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4032472, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "설귀도의 지도",
	["area"] = 7,
	["0"] = "비밀단체의 네 번째 임무, #t4032472#를 찾아 #b#m251000000##k의 #b#p2092001##k을 만나 보자.",
	["1"] = "#p2092001#은 자신의 부탁을 들어주면 지도를 주겠다고 한다. 부탁은 다름 아닌 #m251000000#을 괴롭히는 나쁜 해적, #r#o7130104##k과 #r#o6130208##k의 퇴치이다. 해적들을 퇴치하고 지도를 받자.\r\n\r\n#o7130104##r #a225871##k\r\n#o6130208##r #a225872##k",
	["2"] = "#o7130104#과 #o6130208#를 모두 퇴치하자 #p2092001#은 #t4032472#를 주었다. 일반적으로는 갈 수 없는 곳이니 괜한 모험은 하지 말라며...",
}
nTable["say0"] = {
	["base"] = {["1"] = "당신은 모험가요? 이상할 정도로 강한 기운이 느껴지는군. 당신 같은 사람이 이 마을에는 어쩐 일이시오? 음? 나에게 볼 일이 있는 모양이군. 무슨 일이시오?\r\n#b#L0##t4032472#를 갖고 계신가요?#l\n#k", ["2"] = "설귀도...? 예전에 한참 먼 바다까지 고기잡이를 하던 시절에 본 섬 말이로군. 맞소. 내가 가지고 있소. 해적들 때문에 멀리 나가지는 못하지만 지도들을 버리지는 않았으니.\r\n#b#L0##t4032472#를 주시면 안 될까요?#l\n#k", ["3"] = "그 섬 주변은 암초가 많고 파도는 거칠며 바람마저 강해 가기 힘들다오. 나 역시 그 섬에 직접 들어가 본 적은 한 번도 없으니. 눈으로 덮인 거북이와 생김새가 비슷해 그런 이름이 붙었는데, 사실 그 이름을 아는 자조차 거의 없다오. 그런데도?\r\n#b#L0#그래도 지도를 받고 싶어요.#l\n#k", ["4"] = "...흠. 그렇게까지 말한다면 하는 수 없지. 내 부탁을 하나 들어주시거든 지도를 드리겠소. 부탁은 다름 아니라 #m251000000#을 위협하는 빨간코 해적단의 #r#o7130104##k과 #r#o6130208##k를 각각 #r100마리#k씩 해치우는 것이라오. 하실 수 있겠소?"},
	["yes"] = {["1"] = "마을 밖으로 나가면 빨간코 해적단의 소굴까지 갈 수 있다오.그곳에서 녀석들을 물리쳐 주신다면 그깟 지도는 얼마든지 드리리다.  "},
	["no"] = {["1"] = "흠... 당신은 꽤 강해 보이는데 그런 당신도 고개를 저을만큼 해적단이 강하다는 건가..."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "#o7130104#과 #o6130208#는 모두 퇴치하신 거요? 감사하오. 부탁을 들어 주셨으니 #t4032472#를 드리겠소."},
	["yes"] = {["1"] = "다시 한 번 말씀드리지만 바다를 통해 설귀도에 가는 건 거의 불가능한 일이오. 모험을 위해 들어가실 생각이라면 다시 한 번 고민해 보시오."},
	["stop"] = {
		["mob"] = {["1"] = "아직 부탁드린 #r#o7130104##k과 #r#o6130208# 100마리씩#k 퇴치를 완료하지 못하신 모양이군. 모두 퇴치하고 오거든 #t4032472#를 드리겠소."},
	},
}
return nTable
end