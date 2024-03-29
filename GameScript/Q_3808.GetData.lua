return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2092000,
	["lvmin"] = 50,
	["quest"] = {{["id"] = 3807, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2092000,
	["mob"] = {
		[1] = {["id"] = 7130104, ["count"] = 80},
		[2] = {["id"] = 6130208, ["count"] = 80}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 33500,
}
nTable["info"] = {
	["name"] = "약초밭의 침입자2",
	["parent"] = "약초밭의 침입자",
	["order"] = 2,
	["0"] = "#m251000000# #p2092000#의 약초밭에 도둑이 들었다는데…",
	["1"] = "약초장 #p2092000#이 키우던 약초밭에 누군가 몰래 들어와 약초를 훔쳐갔다고 한다. #p2092000#은 빨간코 해적단의 소행이 분명하다며 #r#o7130104##k와 #r#o6130208##k을 잡아 달라고 했다.\n\n#o7130104#  #r#a38081##k\n#o6130208#  #r#a38082##k",
	["2"] = "#o6130208#와 #o7130104#을 잡았다. 약초 도둑을 잡았으니 #p2092000#도 안심하겠군.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네 모험가이지? 그럼 해적 퇴치 같은 일도 잘 하겠군. 그렇다면 제발 저 해적단 녀석들을 어떻게 좀 해 줘! "},
	["yes"] = {["1"] = "무슨 말이냐고? 전에 #o5120501#가 밭에 들어왔잖은가? 그거에 신경을 쓰면서 인삼을 지키는 동안 웬 녀석들이 밭에 들어와서 다른 약초들을 훔쳐갔어! 그게 어떻게 기른 건데 그걸! 분명 해적단 녀석들의 소행일 거야! ", ["2"] = "이 해적 녀석들! 여기에 소굴을 만든 것도 못마땅한데 약초를 훔쳐가다니! 자네가 해적 #r#o6130208##k와 #r#o7130104##k을 각각 #r80마리#k씩만 혼내주게! "},
	["no"] = {["1"] = "모험가라면서 힘 없는 마을 사람을 돕지조차 않는다니! 그러면 저 해적들과 다를 게 뭔가?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "오오! #o6130208#와 #o7130104#을 퇴치하다니 정말 고맙네. 한 번 된통 당했으니 더 이상 뭘 훔쳐갈 생각은 안 하겠지! 수고했네!"},
	["yes"] = {["1"] = "비싼 약초를 훔쳐가다니, 해적 녀석들이 보는 눈은 있구만. 하지만 약초들은 #p2091002#에게 넘기기로 한 거라고. 더 이상은 절대 도둑 맞지 않을 게야."},
	["stop"] = {
		["item"] = {["1"] = "아직 #r#o6130208##k와 #r#o7130104##k을 처치하지 못한 건가? 약초를 훔쳐가는 녀석들이니 80마리만 혼을 내주게!"},
		["mob"] = {["1"] = "아직 #r#o6130208##k와 #r#o7130104##k을 처치하지 못한 건가? 약초를 훔쳐가는 녀석들이니 80마리만 혼을 내주게!"},
	},
}
return nTable
end