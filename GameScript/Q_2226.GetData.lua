return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032100,
	["quest"] = {{["id"] = 2225, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1032107,
	["item"] = {{["id"] = 4031924, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031924, ["count"] = 1}
	},
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4031924, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "아르웬의 사과",
	["parent"] = "악령의 숲",
	["order"] = 5,
	["1"] = "생각에 잠겼던 아르웬은 리프의 행동은 이해할 수 없지만, 그녀에게 아무런 잘못도 없다고는 할 수 없다며 #b리프#k에게 요정의 머리칼을 전해 달라고 말했다. 아르웬이 이렇게까지 말했으니 부탁을 들어주도록 할까...? 리프는 #b오후 5시부터 다음날 오전 7시까지#k만 나타나는 유령이라는 걸 잊지말자.",
	["2"] = "리프에게 요정의 머리칼을 전해 주었다. 리프는 멍한 얼굴로 머리칼을 바라보더니, #b하인즈#k에게 폐를 끼쳐서 죄송하다는 말을 전해 달라고 말했다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "...모르겠어요. 인간의 마음은. 왜 그렇게 인간은 격렬한 거죠? 리프의 마음도... 행동도... 모두 이해가 가지 않아요. 하지만... 지금 내가 느끼고 있는 이 감정은 분명 죄책감이에요. 난... 아무래도 이 일에 책임을 느끼고 있는 모양이에요.", ["2"] = "리프는 분명 잘못을 저질렀지만... 나 역시 아무런 잘못도 하지 않았다고 말할 순 없는 것 같아요. 이성은 그리 말하지 않지만, 가끔은 감정이 하는 말에 귀를 기울일 필요가 있겠죠... 부탁 하나만 들어주시겠어요?"},
	["yes"] = {["1"] = "당신에게 이 #b요정의 머리칼#k을 드릴 테니 #b리프#k에게 전해 주시겠어요? 아무리 이해하려 해도 그를 이해할 순 없을 테지만... 조금쯤은 그의 마음을 풀어주는 것도 나쁘지 않을 것 같아요. "},
	["no"] = {["1"] = "인간이란 정말 심술궂군요. 하지만 어쩔 수 없죠. 부탁을 들어줄 마음이 들면 다시 찾아와 주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "...왔구나. 아르웬에게 사과의 말은 전해 줬어? 뭐? 전하지 못했다고? 도, 도대체 왜...! "},
	["yes"] = {["1"] = "...이건... 요정의 머리칼? 어... 어떻게 된 거지? 요정이 자신의 머리칼을 준다는 건, 마음 깊이 사과할 때 뿐인데... 설마 아르웬이 이걸 전해주라고 했다는 말이야? 그렇다는 건... 아르웬이 사과를...", ["2"] = "믿어지지 않아... 도도한 아르웬이 누군가에게 사과를 한다는 것이... 그리고 그 대상이 리프라는 것이... 사실 그녀는 아무 잘못도 없는데... 사과를 해야 하는 건 오히려 이쪽인데... 아르웬... 미안하고, 또 고마워요...", ["3"] = "미안해. 너에게도 폐를 많이 끼쳤지? 걱정하셨을 하인즈님께도 죄송하다고 전해줘. "},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b리프#k에게는 안 가신 건가요? 당신이라면 그가 어디 있는지 알고 계실텐데요...?"},
		["item"] = {["1"] = "#b아르웬#k에게 미안하다는 말은 전하고 온 거야...?"},
	},
	["ask"] = {"...뭐라고요? 요정의 머리칼을 잃어버리셨다고요? 세상에. 그게 얼마나 귀한 건지는 알아요? 역시 인간이란...! ...휴. 아니지. 이번만은 다시 한 번 요정의 머리칼을 줄 테니, #b리프#k에게 꼭 전해 주세요. 잃어버리지 말고요! "},
}
return nTable
end