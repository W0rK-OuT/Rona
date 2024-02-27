return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040017,
	["lvmin"] = 41,
	["quest"] = {{["id"] = 3435, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2040017,
	["item"] = {{["id"] = 4000121, ["count"] = 80}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 5600,
	["item"] = {
		{["id"] = 2020009, ["count"] = 50},
		{["id"] = 4000121, ["count"] = -80}
	},
}
nTable["info"] = {
	["name"] = "플라티안 퇴치",
	["0"] = "로스웰초원 어딘가에 있는 메소레인저 그린을 찾아가보자.",
	["1"] = "지구방위본부 근처 로스웰 초원에서 메소레인저 그린을 다시 만났다. 그린은 이번에는 마티안보다 훨씬 강한 #b플라티안#k이 지구방위본부를 위협하고 있다면서 이번에는 #b플라티안#k을 퇴치하고 그 증거로 #b플라티안의 헬멧 80개#k를 모아와 달라는 임무를 주었다.\n\n#i4000121##t4000121# #b#c4000121##k/80",
	["2"] = "지구방위본부 근처 로스웰 초원에서 메소레인저 그린이 준 임무대로 플라티안을 쓰러뜨리고 녀석들의 헬멧을 모두 모아 가져다 주었다. 하지만 아직도 메소레인저의 임무는 끝나지 않은 듯 하니 여유가 생긴다면 그린을 다시 찾아가 봐야 겠는걸…",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "본부로부터 새로운 임무들이 끊임없이 내려오고 있어서 눈코 뜰 새 없이 바쁘군요. 그렇지 않아도 와 주시기를 기다리고 있었는데 잘됐어요. 이번에는 지난번에 쓰러뜨렸던 #o4230119# 보다 훨씬 강한 녀석들이 지구방위본부를 위협하고 있다는 소식입니다.", ["2"] = "문제의 외계인은 #b#o4230120##k이라는 녀석들인데 #o4230119# 보다 계급이 높고 훨씬 위험한 존재라더군요. 어떠세요? 일전에 상대했던 녀석들보다 훨씬 어려운 일이 되겠지만... 저 대신 녀석들을 퇴치하는 임무를 맡아 해결해 주시겠어요?"},
	["yes"] = {["1"] = "승낙하실 줄 알았어요. 이 초원 어딘가에 있는 #b#o4230120##k을 쓰러뜨리고 그 증거로 녀석들이 쓰고 있던 헬멧을 가져와 주세요. #b#t4000121# 80개#k만 있다면 녀석들이 퇴치되었다는 것을 본부에 보고할 수 있을거에요. 그럼 부탁합니다!"},
	["no"] = {["1"] = "결코 당신에게 손해가 가는 일은 아닐텐데 아쉽네요. 하지만 나중에라도 마음이 바뀌게 된다면 다시 절 찾아와 주세요. 그럼 저는 남은 임무가 많아서 이만 실례하겠습니다!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "다시 돌아와 주셨군요. #b#o4230120##k을 상대하는데 어렵지는 않으셨나요? 어디보자... #b#t4000121# 80개#k 틀림 없군요. 이 것을 본부로 보내면 임무를 무사히 완수했다는 것을 인정해 주겠지요. 자... 이건 본부로부터의 지원 물품입니다. 받아주세요~!"},
	["yes"] = {["1"] = "#b#t2020009# 50개#k는 잘 받으셨겠지요? 이번 임무 역시 처음보다는 어려웠겠지만 그래도 당신에게는 별 거 아니었을 거에요. 하지만 아직도 본부로부터의 임무가 몇 가지 더 남아 있으니 시간이 나실 때마다 종종 저를 찾아와 주세요."},
	["stop"] = {
		["item"] = {["1"] = "아직 본부로부터 전달받은 임무를 완수하지 못하신 것 같군요. 지구방위본부를 위협하고 있는 #b#o4230120##k를 쓰러뜨리고 그 증거로 #b#t4000121# 80개#k를 가져와 주세요. 일전에 상대했던 녀석들보다 계급도 높고 더 강하니 조심하시구요. 그럼 부탁드려요!"},
	},
}
return nTable
end