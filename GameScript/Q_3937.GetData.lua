return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101010,
	["lvmin"] = 29,
	["quest"] = {{["id"] = 3930, ["state"] = 2}, {["id"] = 3933, ["state"] = 2}, {["id"] = 3936, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101010,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 10000,
	["item"] = {
		{["id"] = 4031581, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "모래그림단의 정체",
	["0"] = "모든 모래그림단원의 시험을 통과하고, 그들에게 모래그림단원으로 인정하겠다는 말까지 들었다. 이제 그들의 비밀 아지트로 가보자. ",
	["1"] = "모래그림단 단장 #b#p2101010##k는 지금까지 단원 테스트를 잘 통과해 주었다며 #m260000000#의 술탄과 왕비에 대한 이야기를 해주었다. 모든 이야기를 마친 그는 #m260000000#를 둘러 보고, 앞으로 모래그림단이 되어 일할 각오가 된다면 다시 오라고 말했다.",
	["2"] = "#p2101010#에게 모래그림단원으로 인정 받았다. 이제부터 모래그림단의 일원으로서 #m260000000#를 위해 노력하자. ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네가 바로 #p2101011#, #p2101003#, #p2101002#가 말하던 바로 그 사람이군. 지금까지 단원 테스트를 잘 통과해 주었네. 그럼 자네에게 #m260000000#에 대한 이야기를 해주지. ", ["2"] = "#m260000000#는 니할 사막을 떠돌던 유목민들이 만든 나라라네. 척박한 사막이지만 오아시스와 #t4011008#이 있기에 교역의 중심이 되고 있다네. #t4011008#은 사막에서만 만들어지는 특별한 광석이지. 비싼 값에 거래되기 때문에 #m260000000#를 부유하게 만드는 주요 자원이지.", ["3"] = "하지만 마을을 보게. #m260000000#는 절대 부유해 보이지 않는다네. 그 이유는 단 하나. 왕비 때문이야. 요정 출신이라는 왕비는 사치스럽고 잔인하지. #m260000000# 주민들이 내는 세금은 모두 그녀가 보석을 사는데 쓰이고 만다네. 어떤가? 이제 #m260000000#에 대해 좀 알겠는가?"},
	["yes"] = {["1"] = "좀 더 #m260000000#를 다니면서 이곳의 분위기를 파악해 보게. 모래그림단으로서의 각오가 선다면, 다시 와서 말을 걸어주게나. "},
	["no"] = {["1"] = "아직 모르겠는가? 그렇다면 다시 이야기를 해주겠네."},
}
nTable["say1"] = {
	["base"] = {["1"] = "모래그림단원이 되어 #m260000000#를 위해, #m260000000# 주민들을 위해 왕비와 싸울 준비가 되었는가?"},
	["yes"] = {["1"] = "이제부터 자네는 진정한 모래그림단원일세. 앞으로 함께 싸울 동지를 환영하지. "},
}
return nTable
end