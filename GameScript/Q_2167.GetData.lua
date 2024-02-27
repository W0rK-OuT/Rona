return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1092003,
	["lvmin"] = 25,
	["quest"] = {{["id"] = 2166, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2060006,
	["item"] = {{["id"] = 4031841, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031841, ["count"] = 1}
	},
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 4031841}
	},
}
nTable["info"] = {
	["name"] = "바다의 정기를 먹고 사는 반딧불1",
	["0"] = "노틸러스호 하층 복도에 있는 샤를 왕자에게 또 다른 근심이 생겼다고 한다. 무슨 사연인지 들어볼까?",
	["1"] = "샤를 왕자에게 바다 반딧불이라는 신기한 이야기를 들었다. 노틸러스호에는 빛나는 돌 이외에도 신비한 것들이 많은 것 같다. 그런데 이 반딧불들의 힘이 약해지고 있다니, 샤를 왕자의 근심이 크구나. 샤를 왕자를 도와주기 위해 #b아쿠아리움#k의 #b뮤즈#k에게 가서 마법의 병에 #b바다의 정기#k를 받아오자.",
	["2"] = "뮤즈로부터 마법의 병에 바다의 정기를 받았다. ",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "아~ 안녕하세요? 전에 빛나는 돌의 힘을 느끼신 그 분이시로군요! 요새 이 곳이 약간 어둡지 않나요? 노틸러스호 내부를 환하게 해주는 바다 반딧불들의 힘이 약해지고 있어요.\r\n#L0##b바다 반딧불이요?#k#l", ["2"] = "네. 바다 반딧불들은 심해에서 바다의 정기를 먹으며 밝은 빛을 내는 신비로운 아이들이에요. 빅토리아 근해로 정착한 뒤에 심해로 들어가는 일이 없어 반딧불들의 힘이 약해져 가고 있어요. 혹시 시간이 있으시다면 바다 반딧불과 카이린님을 위해 바다의 정기를 구해주시겠어요?"},
	["yes"] = {["1"] = "바다의 정기는 #b아쿠아리움의 뮤즈#k에게서 받으실 수 있을거에요. 이 마법의 병에 #b바다의 정기#k를 가득 담아와 주세요."},
	["no"] = {["1"] = "바쁘신건가요? 아… 이를 어쩐담…"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "샤를 왕자님에게 먼저 연락을 받았습니다. 왕자님에게 받은 마법의 병을 저에게 주시겠어요?"},
	["yes"] = {["1"] = "바다의 정기를 모으려면 약간의 시간이 필요하답니다. 잠시 기다려 주세요."},
	["stop"] = {
		["npc"] = {["1"] = "뮤즈님은 아쿠아리움에 있답니다. 빨리 바다의 정기를 받아와주세요. 부탁드려요."},
	},
	["ask"] = {"마법의 병을 깨뜨리셨다고요? 유리로 된 물건이니 조심하셔야 해요. 다시 드릴테니 빨리 바다의 정기를 담아서 와 주세요."},
}
return nTable
end