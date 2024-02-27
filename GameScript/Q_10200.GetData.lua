return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2084001,
	["lvmin"] = 20,
	["normalAutoStart"] = 1,
}
nTable["check1"] = {
	["npc"] = 2084001,
	["infoNumber"] = 10201,
	["infoex"] = {"1"},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["money"] = 5000,
}
nTable["info"] = {
	["name"] = "골드리치의 등장",
	["0"] = "새로운 인물이 나타난 것 같은데... 머리 위의 전구를 클릭해보자.",
	["1"] = "#b#p2084001##k와 거래를 해보자.",
	["2"] = "#b#p2084001##k와 거래를 해보았다.",
	["area"] = 50,
	["autoStart"] = 1,
	["autoComplete"] = 1,
	["oneShot"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "나는 무역상 골드리치라네. 다른 상점에서 볼 수 없는 희귀한 물건들도 가지고 있지. 나와 거래를 해보겠나?"},
	["yes"] = {["1"] = "나를 만나려면 자유시장이나 리스항구로 오게."},
	["no"] = {["1"] = "그래? 나도 빈털터리는 상대하고 싶지 않네."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이건 첫 거래를 기념하는 작은 선물이네."},
	["yes"] = {["1"] = "만나서 반가웠다네. 자주 찾아오게나."},
}
return nTable
end