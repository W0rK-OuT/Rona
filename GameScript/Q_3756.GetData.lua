return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081000,
	["normalAutoStart"] = 1,
	["lvmin"] = 100,
}
nTable["check1"] = {
	["npc"] = 2081000,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 10000,
	["nextQuest"] = 3757,
}
nTable["info"] = {
	["name"] = "드래곤 라이더의 정체 1",
	["area"] = 41,
	["0"] = "최근 리프레 쪽에서 정체를 알 수 없는 무언가가 나타나 마을에 민폐를 끼치고 있다고 하는데, #b촌장 타타모#k를 찾아가 사건의 전모를 들어보자.",
	["1"] = "리프레 마을의 #b촌장 타타모#k를 찾아가 최근 리프레 마을에 일어나는 일들에 대해 들어보자.",
	["2"] = "#b촌장 타타모#k를 찾아가 리프레 마을의 수상한 사건에 대해 듣고 조사를 의뢰 받았다.",
	["autoStart"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "에헴.. 내 말이 잘 들리는가? #b#h0##k. 자네 매우 바쁜건 알겠지만 그래도 꼭 시간을 내어 우리마을에 일어 나고 있는 일에 대한 이야기를 들어주게나. 이 늙은이가 부탁하겠네."},
	["yes"] = {["1"] = "최근 우리 리프레 마을에 수상한 일이 생겨난게 한 두가지가 아니네. 마을의 촌장인 내가 혼자 해결해 보려했지만 역부족이라네. 우리 마을에는 메이플 월드의 진정한 용사 #b#h0##k 자네의 도움이 꼭 필요하네.", ["2"] = "잘 생각해보고 리프레 마을의 촌장인 나 #b타타모#k를 찾아와 주게나."},
	["no"] = {["1"] = "그렇다면 우리마을은 이대로..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "마음의 결정을 내린건가? 역시 #b#h0##k 자네라면 우리 마을을 도와줄거라 믿어 의심치 않았네."},
	["yes"] = {["1"] = "사실 우리마을은 용족과 균형을 이루어 가며 평화를 지켜왔는데.. 최근들어 자꾸 이상한 일이 생겨나기 시작했다네."},
}
return nTable
end