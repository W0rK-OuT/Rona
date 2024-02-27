return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1090000,
	["lvmin"] = 120,
	["job"] = {522},
}
nTable["check1"] = {
	["npc"] = 1090000,
	["infoNumber"] = 6371,
	["infoex"] = {"2"},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1200000,
	["skill"] = {
		{["id"] = 5221006, ["masterLevel"] = 10, ["job"] = {522}}
	},
}
nTable["info"] = {
	["name"] = "강해지는 방법",
	["0"] = "캡틴이 된 나를 카이린이 찾는다고 한다. 무언가 가르쳐 줄 것이 있다는데…",
	["1"] = "카이린에게 나의 능력을 보여주어야 인정을 받을 수 있다. 나의 능력을 충분히 보여줄 수 있도록 단단히 준비하고 가서 카이린에 대항하여 2분 이상을 버티자.",
	["2"] = "카이린에게 나의 능력을 인정받았다. 카이린은 더욱 강해지라며 나에게 배틀쉽을 가르쳐 주었다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "오랜만이군. 못 본 사이에 많이 변했는걸? 애송이였을 때 해적이 되고 싶다며 찾아온 일이 엊그제 같은데 벌써 캡틴이 되다니. 어때? 캡틴이 된 기분이? ", ["2"] = "아직 무엇인가 부족하다고 생각되지 않나? 이미 충분히 강하다고 생각한다면 오산이야. 수련의 길은 끝이 없어. 네가 지금까지 걸어온 길보다 더 길고 험난한 수련의 길을 걸어야 더 강해질 수 있다고. 흐음… 눈빛을 보아하니 역시 무엇인가 부족하다고 느끼고 있군.", ["3"] = "좋아. 바로 그 자세야. 새로운 스킬을 가르쳐주도록 하지. 단, 조건이 있지. 네가 캡틴이 되었어도 내가 원하는 수준의 캡틴이 아닐지도 몰라. 너의 강함을 보여줘. 내가 내는 시험을 통과하게 되면 새로운 스킬을 가르쳐주겠어."},
	["yes"] = {["1"] = "나의 시험은 나를 버티는 거지. 나와 대결을 하는 거야. 난 너에게 가르쳐 줄 새 스킬을 사용할거야. 이 공격을 버텨보도록 해. 봐주지 않을 테니 단단히 준비해서 오는게 좋을거야. 자, 그럼 나에게 도전할 준비가 되면 다시 말을 걸어줘."},
	["no"] = {["1"] = "아직 자신이 없는 건가? 그런 배짱으로 캡틴이 되었다니… 실망이군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "축하해. 나의 시험을 통과하였군. 너에게 새로운 기술 '배틀쉽'을 알려주도록 하지."},
	["yes"] = {["1"] = "지금까지 사용했던 스킬들과 비교하면 특이하지. '배틀쉽'을 타고 적을 공격할 수 있어. 이 배를 타는 동안은 방어력이 올라가서 약간은 안정적인 전투를 할 수 있어. 그럼, 더욱 훌륭한 건슬링거가 되길…"},
}
return nTable
end