return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012118,
	["lvmin"] = 17,
	["quest"] = {{["id"] = 22518, ["state"] = 2}},
	["item"] = {{["id"] = 4032457, ["count"] = 1}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1012118,
	["mob"] = {
		[1] = {["id"] = 1210101, ["count"] = 150}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2900,
}
nTable["info"] = {
	["name"] = "왕연해의 수련",
	["area"] = 7,
	["0"] = "#p1012118#씨에게 드디어 인정받은 것 같다. #b#p1012118##k씨의 수련장을 이용해 보자.",
	["1"] = "#p1012118#씨의 수련장 안에 있는 몬스터는 #o0210100#과 #o1210100# 같은 사냥하기 쉬운 녀석들뿐이었다. 그것을 항의하자 #p1012118#씨는 자신이 직접 수련을 시켜주겠다며 #o1210101#를 사냥하라는데...\r\n\r\n#o1210101##r #a225191##k",
	["2"] = "#o1210101#를 모두 사냥하자 #p1012118#씨는 대단하다며 #p1012118#의 수련증표를 주었다. 딱히 쓸 데가 있을까?",
}
nTable["say0"] = {
	["base"] = {["1"] = "흠. 어떤가, 내 수련장은. 멋지지 않나?\r\n#b#L0#대단한 척 하더니 별로 센 몬스터도 없잖아요.#l\n#k", ["2"] = "벼, 별로 세지 않다니! #o0210100#이 얼마나 무서운 몬스터...\r\n#b#L0#...#o1210102#보다 #o0210100#이 레벨 낮아요.#l\n#k", ["3"] = "헉! 그런 극비사항이 어디서 새어나갔지?\r\n#b#L0#(몬스터 잡아 보면 아는데.)#l\n#k", ["4"] = "흠흠. 아무튼 #o0210100#은 그렇다쳐도 #o1210101#는 #o1210102#보다 강하지 않나? 저 녀석만 사냥해도 레벨업은 금방이야! 자, 내가 직접 수련시켜 주지! "},
	["yes"] = {["1"] = "자, 그럼 어서 #r#o1210101##k를 #r150마리#k 사냥해 보게! 해낸다면 내 자네를 인정해 주지! 음핫핫핫!"},
	["no"] = {["1"] = "수, 수련을 거절하다니? 어째서? 내가 수련시키는 사람들은 왜 아무도 날 믿지 않는 거지?"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "#o1210101#를 퇴치하고 돌아온 건가? 오, 역시. 내 눈이 틀리지 않군. 처음 봤을 때부터 자네의 실력은 알아봤지.\r\n#b#L0#(앞잡이라고 했으면서!)#l\n#k", ["2"] = "후후... 역시 나의 지도를 받은 수련생들은 금방 성장한다니까."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["mob"] = {["1"] = "아직 #r#o1210101# 150마리#k는 퇴치하지 못한 건가? 그러니까 뭐랬나! 생각보다 강하다니까?"},
	},
	["ask"] = 1,
}
return nTable
end