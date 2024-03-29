return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1072003,
	["lvmin"] = 14,
	["subJobFlags"] = 2,
	["quest"] = {{["id"] = 2355, ["state"] = 1}},
}
nTable["check1"] = {
	["npc"] = 1057001,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3000,
	["nextQuest"] = 2357,
}
nTable["info"] = {
	["name"] = "수상한 자에 대한 조사",
	["area"] = 10,
	["type"] = "[필수]",
	["0"] = "도적 전직 교관이 다크로드의 밀서를 받고 비밀리에 조사를 진행중이라는 홍아의 말이 있었으니 도적 전직 교관을 찾아가 보자. 단, 그에게 밀서의 내용을 아는 것 처럼 행동하지 않도록 조심하는 것이 좋겠다.",
	["1"] = "도적 전직 교관은 아무래도 커닝시티에 불순한 무리가 생긴 것 같다면서 그들이 도적인척 행세하며 이미 커닝시티에 들어온 것 같다고 말했다. 특히 째즈바 앞에서 서성이고 있는 삿갓을 쓴 녀석이 아무래도 수상하다면서 그에게 접근해서 무엇을 숨기고 있는지 알아보라고 했다\r\n째즈바 앞에 수상한 사람이라면...혹시 #b'홍아'#k를 말하는 건가?",
	["2"] = "도적 전직 교관은 아무래도 커닝시티에 불순한 무리가 생긴 것 같다면서 그들이 도적인척 행세하며 이미 커닝시티에 들어온 것 같다고 말했다. 특히 째즈바 앞에서 서성이고 있는 삿갓을 쓴 녀석이 아무래도 수상하다면서 그에게 접근해서 무엇을 숨기고 있는지 알아보라고 했다\r\n째즈바 앞에 수상한 사람이라면...홍아는 조금 당황한 것처럼 보였지만 도적 전직 교관을 속일 묘책을 내놓았다.",
	["summary"] = "도적 전직교관이 #b홍아#를 의심하고 있다. 커닝시티의 #b홍아#k를 찾아가 보자.",
	["rewardSummary"] = "경험치 3,000\r\n'위조된 흔적' 퀘스트로 진행 가능\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "여기까지 무슨 일이지? 넌 아직 전직 시험을 칠 필요가 없어보이는데?\r\n#L0##b페리온으로 향하는 길에 멀리서 당신이 보이길래 한번 와봤어요. 다크로드님께 당신 이야기를 많이 들었거든요. 요새 바쁘시다고 하던걸요. 다크로드님이 당신에게 도와줄 일이 없는지 알아보라고 하셨어요.#l\n#k", ["2"] = "다크로드님이? 그럼 너 그 일을 알고 있는 건가?\r\n#L0##b극비 사항이긴 하지만 알고 있어요. 최근에 일어난 사건들로 미루어 볼때 유추못할 일은 아니니까요.#l\n#k", ["3"] = "영특하군. 맞아. 그렇지 않아도 그 일 때문에 머리가 아프던 참이었어. 아무래도 그들은 우리의 생각보다 훨씬 더 깊숙히 들어와 있는 것 같아. 그들이 정체가 뭐고, 목적이 무엇인지는 모르겠지만 철저히 조사해 봐야 할 일이야. 너 말야. 나를 좀 도와주지 않겠어?"},
	["yes"] = {["1"] = "녀석들이 이미 커닝시티에 들어와 있는 건 의심할 필요도 없는 사실이야. 하지만 교묘하게 자신을 숨기고 있지. 하지만 내 눈은 속이지 못해. 의심스러운 자를 찾아냈지. 하루종일 째즈바 앞에서 들고 나는 사람들을 감시하고 있는 그 녀석 말이야. 내 생각엔 그 녀석이 제일 의심스러워.", ["2"] = "네가 가서 그 녀석이 무엇을 숨기고 있는 건지 한번 알아봐. 누군지 모르겠다고? 왜 그녀석 있잖아. 삿갓을 쓰고 기분나쁜 눈빛을 하고 있는 이름이 #b홍아#k이던가? 그 녀석 말이야. 분명 뭔가를 숨기고 있는 눈빛이야."},
	["no"] = {["1"] = "다크로드님에게 이야기를 들었다면 이 일이 얼마나 중요한지 알고 있지 않아?"},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "어쩐 일이야? 그 녀석과는 이야기해 봤어?\r\n#L0##b아무래도 당신이 의심받고 있는 것 같아요. 그는 당신이 수상하다고 느끼고 있었어요.#l\n#k", ["2"] = "호옹~ 그래? 아주 머리가 나쁜 녀석은 아닌 것 같군. 그래서 너를 보내서 나에 대해 알아보라 그랬단 말이지? 그렇다면 기대에 부응해 줘야겠지?"},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["npc"] = {["1"] = "네가 가서 그 녀석이 무엇을 숨기고 있는 건지 한번 알아봐. 누군지 모르겠다고? 왜 그녀석 있잖아. 째즈바 앞에서 삿갓을 쓰고 기분나쁜 눈빛을 하고 있는 그 녀석 말이야. 이름이 #b홍아#k인가 하는...분명 뭔가를 숨기고 있는 눈빛이야."},
	},
	["ask"] = 1,
}
return nTable
end