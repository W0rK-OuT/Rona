return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 10000,
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 10000,
    ["item"] = {{["id"] = 4031162, ["count"] = 1}, {["id"] = 4031161, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100,
	["money"] = 200,
    ["item"] = {
        {["id"] = 4031162, ["count"] = -1},
        {["id"] = 4031161, ["count"] = -1}
    },
}
nTable["info"] = {
	["name"] = "피오의 재활용품 수거",
	["0"] = "#b암허스트#k마을의 #b#p10000##k씨가 구하는 것들이 있다고 하는데...",
	["1"] = "#m1010000# 마을에서 고장난 모든 것을 고치는데 능통하기로 소문난 피오씨를 만났다. #p10000#씨는 마을 곳곳에 쓸모가 없어진 상자들을 부서뜨려 #b#t4031161##k와 #b#t4031162##k를 모아오라고 한다. 그러고 보니 여기저기 쓸모없는 나무 상자가 있는 것 같은데...",
	["2"] = "#p10000#씨의 부탁대로 마을 곳곳에 있는 상자를 부서뜨려 몇 가지 재활용품을 모아다 주었다. 버려진 상자 안에는 꽤나 쓸모 있는 물건들이 들어있기도 해서 재밌기도 했다.",
	["area"] = 20,
	["demandSummary"] = "#i4031162:# #t4031162:# #c4031162# / 1\r\n#i4031161:# #t4031161:# #c4031161# / 1\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "아~ 쓸만한 것들이 버려지고 있단 말이야. 내가 마을을 이리저리 돌아다니다 보니까 재활용을 할 수 있는 물건들이 많겠더라구~? 그런 것들을 모아다주지 않을래? 대신 보수는 서운하지 않을 정도로 줄 테니까 말야. "},
	["yes"] = {["1"] = "그렇지! 메이플 아일랜드의 구석구석에 방치 되어 있는 쓸모가 없어진 물건들을 내게 가져다 줘. 그럼 내가 당신에게 적당한 보수를 지급해 주지. 핫핫핫!!", ["2"] = "여기까지 오는 동안 곳곳에 버려져 있는 나무 상자를 보았는지 모르겠는데... 봤어? 그런 상자를 부숴서 안에 있는 재활용품을 수거해 오는 일이야. 낡은 상자를 부수면 #b#t4031162##k, #b#t4031161##k를 수거할 수 있어. 각각 #b1개#k씩 모아다 주면 돼. \n\n#i4031161# #t4031161# #b1개#k\n#i4031162# #t4031162# #b1개#k"},
	["no"] = {["1"] = "그러지 말고 한 번 해보라니까? 쉽게 할 수 있는 거라구~ 내 옆에 있는 저 상자를 때려봐도 그 방법은 쉽게 알 수 있을 텐데 말야."},
}
nTable["say1"] = {
	["base"] = {["1"] = "응? 벌써 내가 말한 재활용품을 모두 모아온 거야? 어디 한 번~ 볼까나~ 이리 줘 봐."},
	["yes"] = {["1"] = "이렇게 재활용해서 쓸 수 있는 물건들이 많은데~ 늘 버려지고 있단 말씀이야? 대책을 좀 세워 봐야겠군! 고마워. 당신 덕분에 쉽게 모을 수 있었어~ 앞으로도 당신처럼 날 도와줄 사람이 많이 오겠지? 다음에 또 만나!"},
	["stop"] = {
		["item"] = {["1"] = "아냐~아냐~ 잘 확인해 보라구!! Q를 누르면 #b퀘스트 창#k을 불러올 수 있어. 그걸 눌러 현재 진행 중인 퀘스트가 어떤 내용인지 다시 한 번 확인해 봐."},
	},
}
return nTable
end