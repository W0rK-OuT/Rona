return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013000,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 22591, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1013000,
	["quest"] = {{["id"] = 22593, ["state"] = 2}, {["id"] = 22594, ["state"] = 2}, {["id"] = 22595, ["state"] = 2}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 10000,
	["nextQuest"] = 22596,
}
nTable["info"] = {
	["name"] = "피하고 싶은 진실",
	["area"] = 7,
	["0"] = "#p1013000#는 #p1205000#의 기억 속으로 함께 가지 못해 모르는 것이 많을 것이다. #b#p1013000##k에게도 보고 들은 것을 설명해 주자.",
	["1"] = "검은 마법사를 부활시키는 것이 목적이라던 블랙윙을 도운 것은 모두 잘못된 일이었을까? #p1205000#은 믿을 수 없다며, 지금까지 했던 블랙윙의 임무들을 다시 한 번 살펴보자고 말했다. #b오르비스, 엘나스, 루디브리엄. 각 마을로 가서 우리가 한 일의 결과를 물어보자#k. \r\n\r\n#y22593# #b(#u22593#)#k\r\n#y22594# #b(#u22594#)#k\r\n#y22595# #b(#u22595#)#k",
	["2"] = "우리가 한 일들은 그저 블랙윙의 목적을 위한 것일 뿐, 마을 사람들에게는 전혀 도움이 되지 않은 것 같다. 아니, 오히려 방해가 된 것 같다. 이럴수가... 메이플 월드를 위한 일이라고 생각한 모든 일이 잘못이었다니. ",
}
nTable["say0"] = {
	["base"] = {["1"] = "마스터, 마스터! 방금 무슨 얘기 한 거야? 난 하나도 모르겠어! 마스터하고 저기 동족... #p1205000#님하고 둘 다 멍하니 있더니 갑자기 말하기 시작하고... 무슨 얘길 한 거야? 기억 속으로 보내겠다니 정말 과거를 보고 온 거야?\r\n#L0##b응... 수백 년 전, #p1205000#과 #p1205000#의 마스터인 프리드의 대화를 엿보고 왔어.#l\n#k", ["2"] = "도대체 어떤 일이 있었길래 검은 마법사 이야기까지 나오는 거야? 검은 마법사는 블랙윙이라는 그 단체의 #p1013203#가, 메이플 월드를 위해 꼭 깨워야 하는 위대한 인물이 아니었어? 어떻게 된 건지 자세히 설명해줘!\r\n\r\n#L0##b검은 마법사는 수백 년 전, 메이플 월드를 지배하려 들었던 사악한 자야. 그는 오닉스 드래곤이 가진 힘을 깨닫고, 오닉스 드래곤의 미완성된 영혼을 자신이 완성시켜줄 테니 자신을 따르라고 했지. 마스터를 배신하고...#l\n#k", ["3"] = "그런! 그건 무리야! 마스터는 나 자신과 동일한걸? 배신할 수 있을 리 없잖아!\r\n#L0##b물론 오닉스 드래곤들은 배신하지 않았어. 그들은 인간을 사랑했고, 악의화신과 같은 검은 마법사를 싫어했거든. 검은 마법사에 의해 완성된 영혼은 악한 영혼이 될 것이 틀림없음을 알고 있었던 거지. 그러자 검은 마법사는... 오닉스 드래곤을 멸종시키고만 거야.#l\n#k", ["4"] = "그, 그럴수가... 그런 이유로 동족들이 전부 멸종해 버렸다는 말이야? #p1205000#이 얼음 속에 갇힌 이유도... 설마?\r\n\r\n#L0##b오닉스 드래곤이 모두 멸종한 후, #p1205000#은 그의 마스터, 그리고 다른 영웅들과 힘을 합쳐 마지막까지 검은 마법사와 싸웠대. 결국 검은 마법사는 봉인 되었고 메이플 월드는 평화로워졌지만... 검은 마법사의 마지막 저주에 의해 얼음에 갇히고만 모양이야.#l\n#k", ["5"] = "모든 게... 검은 마법사 때문이라는 거야? 그럼 우리가 지금까지 해온 일들은 뭐지? 메이플 월드를 위한 일이라고 생각했는데... 아니었던 걸까? 믿을 수 없어! 마스터! 우리 확인해 보자!\r\n"},
	["yes"] = {["1"] = "#m200000000#에서 했던 일, #m211000000#에서 했던 일, #m220000000#에서 했던 일... 블랙윙이 주었던 임무들이 모두 메이플 월드를 위한 일이라고 생각하고 있었어. 하지만 그렇지 않을지도 모른다는 것을 이제야 알게 되었어.\r\n", ["2"] = "우리, 우리가 한 일들의 결과를 보자. #b각 마을로 가서 우리가 한 일들이 어떤 영향을 미쳤는지 사람들에게 물어보면 알 수 있을 거#k야. 우리가 진정 블랙윙에게 속아 잘못된 일을 한 거라면... 절대 용서할 수 없어!\r\n"},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
		["2"] = {["answer"] = "1", ["flip"] = "1"},
		["3"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "작물을 잘 자라게 할 거라고 생각한 성장촉진제는, #o4230105#를 이상 성장시켜서 #m200000000#를 곤란하게 만들었어. ", ["2"] = "좀비 퇴치로 사람들에게 도움이 될 거라고 생각했는데, 그건 #t4032471#를 훔치기 위한 거래 재료일 뿐이었고. ", ["3"] = "#m220000000#의 중요한 보물을 지키던 몬스터를 우리 손으로 쓰러뜨려 버리는 바람에 보물은 도둑맞고 말았지.", ["4"] = "이걸로 확실해졌어. 블랙윙은... 그냥 우리를 이용한 것뿐이야. 검은 마법사를 부활시키기 위해, 우리에게 악행을 저지르게 만들었어! 절대로 용서할 수 없어!"},
	["stop"] = {
		["quest"] = {["1"] = "블랙윙에게 받은 세 가지 임무를 모두 확인해 보자. 각 마을에 가서 사람들에게 결과를 물어보면 될 거야. #b#m200000000#, #m211000000#, #m220000000#... 모두 확인#k해 봐야해!"},
	},
}
return nTable
end