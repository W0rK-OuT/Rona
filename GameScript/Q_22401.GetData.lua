return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1013000,
	["lvmin"] = 50,
	["startscript"] = "q22401s",
	["quest"] = {{["id"] = 22400, ["state"] = 1}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2001},
}
nTable["check1"] = {
	["npc"] = 1013000,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "드래곤 라이딩이 가능할까?",
	["area"] = 7,
	["0"] = "오닉스 드래곤도 라이딩이 가능할까? #b#p1013000##k에게 물어보자.",
	["1"] = "#p1013000#는 마스터 정도 크기라면 태우고 다니는 게 어렵지 않을 것 같다고 말했다. 아무래도 오닉스 드래곤도 라이딩이 가능한 모양이다.",
	["2"] = "#p1013000#는 마스터 정도 크기라면 태우고 다니는 게 어렵지 않을 것 같다고 말했다. 아무래도 오닉스 드래곤도 라이딩이 가능한 모양이다. 하인즈에게 이 사실을 알려주자.",
}
nTable["say0"] = {
	["base"] = {["1"] = "마스터, 무슨 일이야? 뭔가 하고 싶은 말이라도 있어? 응? 라이딩? 라이딩이라면 돼지나 새나 늑대 같은 걸 타고 다니는 걸 말하는 거지? 그런데 그게 왜?\r\n#b#L0#오닉스 드래곤도 라이딩을 할 수 있나 궁금해서. 어때? 가능할 것 같아?#l\n#k", ["2"] = "오닉스 드래곤도 라이딩... 에엑?! 날 타고 다니겠다는 거야? 마스터의 파트너인 나를? 우와악, 마스터 너무해~ 난 애완동물이 아니라고!\r\n#b#L0#파트너니까 타고 다닐 수도 있지 뭐.#l\n#k", ["3"] = "헉. 그렇게 쿨하게 말해버리다니. 좋아! 그럼 내가 힘들 때는 반대로 나도 마스터를 타고 다닐 거야! 그래도 좋아? 그럼 태워줄게.\r\n#b#L0#...하나밖에 없는 마스터를 죽일 생각이야?#l\n#k", ["4"] = "칫. 농담이었어. 예전의 나라면 모를까 지금 내가 마스터에게 타면 아마 마스터를 납짝쿵으로 만들어버릴 거야. 하지만 반대라면 별 문제 없겠지. 마스터는 덩치가 큰 것도 아니고...\r\n#b#L0#그럼 라이딩 가능한 거야?#l\n#k", ["5"] = "응. 마스터보다 내가 날아가는 게 훨씬 빠르니까 효율로 따져봐도 좋은 것 같아. 하지만 그냥은 안 되고 일단 두 가지 준비가 필요해.\r\n#b#L0#두 가지?#l\n#k", ["6"] = "안장과 라이딩을 할 수 있는 기술. 내 등 위에 아무것도 없이 앉았다가는 엉덩이가 무사하지 않을 걸? 게다가 라이딩 기술이 없으면 떨어질 수도 있고. 이 두 가지는 꼭 준비돼야 해."},
	["stop"] = {
		["0"] = {},
		["1"] = {},
		["2"] = {},
		["3"] = {},
		["4"] = {},
	},
	["ask"] = 1,
}
nTable["say1"] = {
}
return nTable
end