return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1012003,
	["lvmin"] = 20,
	["quest"] = {{["id"] = 2014, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1012003,
	["item"] = {{["id"] = 4000007, ["count"] = 30}, {["id"] = 4000002, ["count"] = 60}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1600,
	["nextQuest"] = 2016,
	["item"] = {
		{["id"] = 4000007, ["count"] = -30},
		{["id"] = 4000002, ["count"] = -60}
	},
}
nTable["info"] = {
	["name"] = "장로 스탄 설득하기",
	["parent"] = "가출소년 알렉스",
	["order"] = 2,
	["1"] = "헤네시스 공원 입구에서 알렉스의 아버지인 스탄 장로를 만났다. 처음에는 말을 꺼낼수조차 없었지만 마을 보수에 쓰일 물건인 #b#t4000007# 30개와 #t4000002# 60개#k를 모아오자. \n\n#i4000007# #t4000007# #b#c4000007##k/30\n#i4000002# #t4000002# #b#c4000002##k/60",
	["2"] = "#t4000007# 30개와 #t4000002# 60개를 모아서 드리니 그제서야 이야기를 들어 주기 시작했다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "나와 이야기 하고 싶다고? 나는 이 마을의 장로. 한가롭게 자네같은 녀석과 말하고 있을 시간이 없네. 정 나와 말하고 싶다면 마을을 보수하는데 쓰이는 물건을 좀 모아다 주게. #b#t4000007# #e30개#n#k와 #b#t4000002# #e60개#n#k를 모아다 주면 시간이 날지도.."},
}
nTable["say1"] = {
	["base"] = {["1"] = "어라...? 자네는 누군가? 못보던 녀석이로군.\r\n#b#L0# 아... 이거 실례했습니다. 그냥 지나가던 관광객입니다. 신경쓰지 마세요.#l\r\n#L1# 실은 #p1052000#로부터 부탁을 받고 이렇게 찾아왔습니다. 조금만 시간을 내 주세요.#l\r\n#L2# 하하~ 오늘 날씨 참 좋죠?#l", ["2"] = "뭐라고! #p1052000#라고! 나는 그런 녀석을 아들로 둔 적이 없네! 썩 물러가게!\r\n#b#L0# 아 네... 귀찮게 해 드려서 죄송합니다. 그럼 저는 이만...#l\r\n#L1# #p1052000#는 이곳으로 돌아오고 싶어 합니다.#l\r\n#L2# 이제 그만 하시죠! #p1052000#는 진심으로 뉘우치고 있습니다!#l", ["3"] = "오호라... 이 나에게 정면으로 맞서다니... 보통 녀석이 아니로군! #p1052000#는 어떻게 생활하고 있던가?\r\n#b#L0# #p1052000#는 여비가 모두 떨어져서 힘들게 생활하고 있습니다.#l\r\n#L1# #p1052000#는 방황하는 생활을 지겨워 하고 있습니다.#l\r\n#L2# #p1052000#의 생활이 궁금하시다면 직접 그에게 들어보시죠.#l", ["4"] = "직접 물어보라고? 하하하! 자네는 볼수록 마음에 드는군. 자네... 이 나를 어떻게 생각하고 있나?\r\n#b#L0# 매우 훌륭한 마을의 장로님으로 생각됩니다.#l\r\n#L1# 지나치게 엄격하고 고지식하다고 생각합니다.#l\r\n#L2# 겉모습은 무섭지만 속은 따뜻한 분이라고 생각합니다.#l", ["5"] = "그래... 그 말대로야. 나는 이 마을의 장로... 하지만 #p1052000#가 나가버린 후 장로로서의 위엄이 떨어져 버렸어!\r\n#b#L0# #p1052000#는 그 점을 잘 알고 있고 뉘우치고 있습니다. 다시 돌아오려고 하는 겁니다. 넓은 아량으로 부디 #p1052000#를 용서해 주세요.#l\r\n#L1# 당신은 자신의 아들 보다는 마을에서 자신이 어떻게 보일지가 중요한 겁니까? 자신의 아들보다 마을 사람들의 눈이 더 중요한 겁니까?!?!#l\r\n#L2# #p1052000#는 어머니가 돌아가신 후 엄격한 당신 덕에 이렇게 방황하고 있는 겁니다. 당신이 먼저 그를 용서하는 건 어떻습니까?#l", ["6"] = "그런 일까지 알고 있는 건가? 흠... 확실히 #p1052000#는 아내 '안나'가 저 세상으로 가버린 후 반항이 심해졌지. 하지만 나는 장로로서의 일이 많아서 어린 녀석을 미쳐 잘 보살펴 주지 못했어. 하긴... 녀석이 그렇게 된 것은 내 탓일 지도 모르지... 고맙네. 자네 덕분에 #p1052000#와 오해를 풀 수 있을것 같군. 녀석에게 마을로 돌아와도 좋다는 말을 전해주게. 그래도 아까 부탁했던 물건들은 가져가겠네. 그리고... 아참... 이건 녀석의 어머니... 안나의 유품인 #t4001003#일세. 이걸 전해 준다면 그 녀석도 내 뜻을 알테지... 여기 받아 주게."},
	["stop"] = {
		["0"] = {["answer"] = "2", ["1"] = "관광객이라고? 이 마을이 무슨 관광지인줄 아는건가!!! 이런 이런 한심한 사람 같으니... 어서 썩 내 앞에서 사라지게!", ["3"] = "그렇군... 정말 날씨가 좋... 은게 아니라! 나는 자네와 이렇게 한가롭게 잡담이나 하고 있을 시간이 없네! 더 이상 날 귀찮게 하지 말고 썩 물러가게!"},
		["1"] = {["answer"] = "3", ["1"] = "정말 한심한 사람이로군. #p1052000#를 안다더니 내 호통소리에 기가 죽어 그대로 가버릴 생각인가? 더 이상 자네와는 말하고 싶지 않네. 그 말대로 어서 사라져!", ["2"] = "돌아오고 싶어 한다고? 하하하~! 그런 거짓말을 내가 믿을것 같은가? 아마도 집을 나가 자기 마음대로 할 수 있게 되었다며 기뻐하고 있겠지... 어때? 내 말이 틀렸는가?"},
		["2"] = {["answer"] = "3", ["1"] = "힘들게 살고 있다고? 겨우 그런 모습으로 지내려고 이곳을 나가버린 건가? 하하하~! 그럼 자네... 이 말 확실히 전해주게. [계속 그곳에서 힘들게 생활해라. 사는게 얼마나 힘든지 직접 깨달아라.] 라고 말일세.", ["2"] = "지겹다고오오오오~!!! 이런 못된 녀석! 지겨워서 집으로 돌아온다는 건가! 하하하하하하하~! 나는 더 이상 #p1052000#라는 사람은 모르네! 융통성 없는 자네도 이제 그만 썩 돌아가 주게!"},
		["3"] = {["answer"] = "1", ["2"] = "이런 이런~ 자네는 상당히 솔직하군. 솔직한 건 좋지만 지금 그 대답... 상당히 거슬리는군! 일부러 나를 화나게 하고 싶은 건가? 자네... 사람을 상대하는 법을 잘 모르고 있는것 같다 이 말일세!", ["3"] = "하하하! 자네는 추리력이 대단하군. 어떻게 이 나를 보고 그런 생각을 했지? 진심인가 아니면 나를 상대로 아첨을 하는 건가? 아무튼 자네와는 더 이상 이야기 하고 싶지 않네. 이만 가주게."},
		["4"] = {["answer"] = "3", ["1"] = "당신은... #p1052000#를 잘 알고 있는 사람은 아닌것 같군... 무언가를 대가로 #p1052000#에게 부탁을 받은 건가? 뭐... 상관없네. 나는 절대로 #p1052000#를 용서할 수 없네. 그만 돌아가 주게.", ["2"] = "그래... 그 말대로 일지도 모르지... 하지만 자네! 나는 자네보다 수십년은 더 살아온 장로일세. 지금 나를 가르치려 들겠다는 건가? 이제 자네와는 더 할 말이 없네."},
		["item"] = {["1"] = "나와 이야기 하고 싶다고? 나는 이 마을의 장로. 한가롭게 자네같은 녀석과 말하고 있을 시간이 없네. 정 나와 말하고 싶다면 마을을 보수하는데 쓰이는 물건을 좀 모아다 주게. #b#t4000007# #e30개#n#k와 #b#t4000002# #e60개#n#k를 모아다 주면 시간이 날지도..."},
	},
	["ask"] = 1,
}
return nTable
end