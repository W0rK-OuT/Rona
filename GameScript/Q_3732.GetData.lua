return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2082009,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3730, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2082009,
	["mob"] = {
		[1] = {["id"] = 7120108, ["count"] = 50}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 90000,
}
nTable["info"] = {
	["name"] = "시끄러운 로봇",
	["area"] = 41,
	["parent"] = "2215년 폭격의 날",
	["order"] = 3,
	["1"] = "2215년 폭격 당한 도심 한복판에서 메이를 만났다. 도대체 엉망진창이 된 도심 한복판에서 무엇을 하고 있는지는 알 수 없지만, 폭격 이후 나타난 로비들이 너무 시끄러워 신경쇠약에 걸릴 것 같다면서 로비를 퇴치해 달라고 부탁했다.",
	["2"] = "2215년 폭격 당한 도심 한복판에서 메이를 만났다. 도대체 엉망진창이 된 도심 한복판에서 무엇을 하고 있는지는 알 수 없지만, 폭격 이후 나타난 로비들이 너무 시끄러워 신경쇠약에 걸릴 것 같다면서 로비를 퇴치해 달라고 부탁했다. 그렇지 않아도 로봇들이 너무 시끄러웠기 때문에 흔쾌히 도와주었다.",
	["demandSummary"] = "#o7120108# #a37321#\r\n",
	["rewardSummary"] = "경험치 90,000\r\n'생존자 수색' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요 #b#h0##k님, 이 곳은 위험한 곳이에요. 얼마 전에 폭격을 당했죠. 이렇게 돌아다니시는 건 위험한 행동입니다.\r\n#L0##b내 이름은 어떻게 알고 있죠? 또 이렇게 위험한 곳에 어떻게 있는 거죠?#l\n#k", ["2"] = "글쎄요? 그건 비~밀입니다. 지금 전 저 시끄러운 로봇들을 청소해야 하거든요. 삐리삐릭 소리를 내면서 여간 시끄러운 것이 아니에요. 저 좀 도와주시겠어요?"},
	["yes"] = {["1"] = "폭격이 있던 날 아침에 눈을 떠보니 도심은 엉망이 되어있고, 저 로봇들이 시끄러운 소리를 내면서 돌아다니고 있지 뭐에요. 저 시끄러운 소리를 더 듣다가는 신경쇠약에 걸려버릴 것 같아요. #b#h0##k님도 저 로봇들을 없애는 일을 도와주세요. 시끄러운 로비 50마리만 잡아주세요."},
	["no"] = {["1"] = "네, 괜찮습니다. 저 혼자 어떻게든 해보지요. 저같이 연약하고 예쁜 사람에게는 조금 힘들겠지만 말이죠."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "감사합니다. 이제야 좀 살 것 같네요. 도대체 이 로봇들은 모두 어디서 나타난 것일까요? 더 이상 늘어나지 않았으면 좋겠어요."},
	["stop"] = {
		["npc"] = {["1"] = "저 시끄러운 소리를 더 듣다가는 신경쇠약에 걸려버릴 것 같아요. 시끄러운 로비 50마리만 잡아주세요."},
		["item"] = {["1"] = "저 시끄러운 소리를 더 듣다가는 신경쇠약에 걸려버릴 것 같아요. 시끄러운 로비 50마리만 잡아주세요."},
		["mob"] = {["1"] = "저 시끄러운 소리를 더 듣다가는 신경쇠약에 걸려버릴 것 같아요. 시끄러운 로비 50마리만 잡아주세요."},
	},
}
return nTable
end