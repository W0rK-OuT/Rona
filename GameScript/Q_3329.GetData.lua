return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111005,
	["lvmin"] = 55,
}
nTable["check1"] = {
	["npc"] = 2111005,
	["item"] = {{["id"] = 4000364, ["count"] = 80}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 43000,
	["item"] = {
		{["id"] = 4000364, ["count"] = -80}
	},
}
nTable["info"] = {
	["name"] = "키니의 로이드 연구",
	["0"] = "#b#m261000000##k 의 작은 요정 #b#p2111005##k. 그녀는 연금술사가 되는 것이 목표라고 한다. 그녀는 요즘 새로운 연구를 시작했다는데...",
	["1"] = "#p2111005#가 요즘 연구하는 건 알카드노의 연금술사들이 만든 #o5110301#라고 한다. #o5110301#를 연구하는데는 #t4000364#이 필요하다고 하는데... #p2111005#를 돕고 싶다면 #o5110301#에게서 #b#t4000364# 80개#k를 구해오자.  \n\n#i4000364##t4000364# #b#c4000364##k/80 ",
	["2"] = "#p2111005#에게 #t4000364#을 모두 가져다 주었다. 복잡해 보이는 #t4000364#을 보며 즐겁게 웃는 #p2111005#. 역시 어려도 연금술사는 연금술사인 것 같다.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕? 당신은 모험가님? #m261000000#의 연금술사 #p2111005#예요. 엣? 연금술사같지 않다고요? 어리다고 무시하진 말아주세요! 정식 연금술사는 아니지만, 정식 연금술사 못지 않은 실력을 가지고 있다고요!", ["2"] = "요정이 연금술을 익힌다고 하면 이상하다는 사람도 많지만... 뭐 어때요. 배우고 싶은 걸 배우는 게 중요한 거 아니겠어요? 연금술을 연구하는 건 정말 재밌는걸요!", ["3"] = "최근엔 #b#o5110301##k의 연구를 하고 있어요. #o5110301#는 알카드노의 연금술사들이 만든 기계 인형인데, 굉장히 흥미롭답니다. 그런데... 사실 그것 때문에 조금 곤란한 일이 있어요... 모험가님이 #p2111005#의 연구를 조금 도와주시면 안 될까요?"},
	["yes"] = {["1"] = "#o5110301#에게서 #b#t4000364##k을 #b80개만#k 구해 주세요. #o5110301#의 복잡한 내부를 이루는 전선들을 연구하면, #o5110301#의 전체 구조에 대해서 보다 쉽게 이해할 수 있을 것 같거든요! ", ["2"] = "제뉴미스트의 다른 연금술사 아저씨들이 알면 #o5110301# 같은 건 연구하지 말라고 할 테니까 비밀로 해주셔야 해요! 그럼 부탁드려요!"},
	["no"] = {["1"] = "에엣? 모험가님도 바쁜 일이 있으신 모양이에요? 혹시 연구 때문에? 그럼 함께 연구해요!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "와앗! #b#t4000364# 80개#k를 모두 구해오셨군요! 와아~ 정말 대단해요! 이것만 있으면 금방 #o5110301#의 구조에 대해서 알 수 있을 거예요. 진짜진짜 고맙습니다!"},
	["stop"] = {
		["item"] = {["1"] = "우웅... 아직 #b#t4000364# 80개#k를 구하지 못하신 것 같은데요? #t4000364#은 #o5110301# 연구를 위해 꼭 필요하답니다."},
	},
}
return nTable
end