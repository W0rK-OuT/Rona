return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081400,
	["lvmin"] = 120,
	["quest"] = {{["id"] = 6931, ["state"] = 2}},
	["job"] = {411, 421, 433},
}
nTable["check1"] = {
	["npc"] = 2081400,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "헬린의 두 번째 진실",
	["parent"] = "도적 궁극의 길",
	["order"] = 3,
	["1"] = "#b#p2081400##k는 나에게 두 번째 진실을 들려 주겠다며 준비가 되면 다시 말을 걸어달라고 했다.",
	["2"] = "#b#p2081400##k에게서 두 번째 진실인 홀리코라스에 대한 이야기를 들었다. 그녀는 마지막 이야기가 남아있다고 했다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "제가 당신에게 들려줄 두 번째 이야기는 바다 속에서 자라나는 돌에 대해서에요. 이야기를 듣겠어요?"},
	["yes"] = {["1"] = "좋아요. 당신은 이 이야기를 들을 자격이 있지요. 그럼 준비가 되면 다시 말을 걸어 주세요."},
	["no"] = {["1"] = "저를 찾아왔을 때의 용기는 어디로 갔나요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "바다 속 아쿠아리움에 가보신 적이 있습니까? 아쿠아리움은 바다 속 깊은 협곡 위에 떠 있는 신비로운 곳이죠. 어떻게 아쿠아리움이 떠있을 수 있는지 궁금하시지 않나요?", ["2"] = "아쿠아리움이 떠 있는 깊은 심해 협곡 바닥에는 스스로 성장하는 돌인 #b홀리코라스#k가 있답니다. 언제부터 그 자리에 있었는지, 어떻게 돌이 성장하는지는 알 수는 없지만 아주 오래 전부터 그 자리에 있었습니다.", ["3"] = "#b홀리코라스#k는 바다를 정화하는 신기한 힘을 가지고 있는데 이 힘 때문에 아쿠아로드가 정화되고 아쿠아리움이 해저 협곡 위에 떠있을 수 있는 것이지요. 이 #b홀리코라스#k가 사라지게 된다면 바다는 어둠으로 물들고 말거에요."},
	["yes"] = {["1"] = "두 번째 진실에 대한 이야기는 여기까지입니다. 마지막 이야기를 들을 준비가 되면 다시 말을 걸어 주세요."},
}
return nTable
end