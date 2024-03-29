return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2092001,
	["lvmin"] = 60,
	["normalAutoStart"] = 1,
	["lvmax"] = 80,
}
nTable["check1"] = {
	["npc"] = 2060103,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 50000,
}
nTable["info"] = {
	["name"] = "안개바다에 떠도는 소문",
	["area"] = 44,
	["0"] = "백초마을의 황선장이 백초마을 북쪽에 있는 안개바다에 떠도는 소문에 대한 이야기를 해주겠다고 한다. 왠지 으스스할 것 같은데 일단 들어나 볼까?",
	["1"] = "백초마을의 황선장은 백초마을과 아쿠아로드를 이어주는 북쪽 항로에 대한 이야기를 해주었다. 백초마을과 아쿠아로드를 잇는 항로는 메이플월드에서 가장 긴 항로로 이 항로를 지나다 보면 무릉도원 북쪽의 #b'안개바다'#k를 지나게 되는데 안개바다에는 떠도는 유령선에 대한 소문이 있다고 한다. 먼 옛날 메이플월드 곳곳에서 생겨나기 시작한 해적을들 소탕하기 위해서 해군함선이 출동했던 적이 있는데, 백전백승을 자랑하던 해군함선이 어느 날 불현듯 사라져버리고 말았고, 해군함선이 사라진 곳이 바로 안개바다라는 것이다.\r\n황선장은 나에게 흥미가 당긴다면 안개바다로 가서 유령선에 대해 조사해 보라며, 아쿠아리움과 백초마을을 오가는 돌고래 택시가 뭔가 알고 있을 지도 모른다.",
	["2"] = "백초마을의 황선장은 백초마을과 아쿠아로드를 이어주는 북쪽 항로에 대한 이야기를 해주었다. 백초마을과 아쿠아로드를 잇는 항로는 메이플월드에서 가장 긴 항로로 이 항로를 지나다 보면 무릉도원 북쪽의 #b'안개바다#k를 지나게 되는데 안개바다에는 떠도는 유령선에 대한 소문이 있다고 한다. 먼 옛날 메이플월드 곳곳에서 생겨나기 시작한 해적을들 소탕하기 위해서 해군함선이 출동했던 적이 있는데, 백전백승을 자랑하던 해군함선이 어느 날 불현듯 사라져버리고 말았고, 해군함선이 사라진 곳이 바로 안개바다라는 것이다. 그 후, 사람들이 해군함선에 대해 잊고 있을 때쯤 안개바다에서 유령선이 나타난다는 소문이 돌기 시작했다는 것이다. 황선장은의 말에 흥미가 생겨 유령선을 찾아 나섰는데 돌고래 택시가 데려다 준 안개바다의 이름모를 섬에게서 거대한 유령선을 발견했다.",
	["autoStart"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네가 흥미를 가질만한 이야기가 있는데 들어보겠나?\r\n#b#L0#무슨 이야기인가요?#l\n#k", ["2"] = "메이플월드에서 가장 긴 뱃길이 어디인 줄 아나? 바로 아쿠아리움과 백초마을을 잇는 항로지. 지금은 돌고래 택시로 편하게 오가고 있지만 예전에는 목숨을 걸고 오가던 아주 험한 뱃길이었지. 그 항로의 3분의 2지점, 그러니까 무릉도원과 엘나스 산맥의 경계지역에 1년 내내 안개로 둘러쌓인 해역이 있는데 사람들은 그 곳을 #b안개바다#k라고 부른다네.\r\n#b#L0#안개바다는 어떤 곳이죠?#l\n#k", ["3"] = "이 안개바다는 해류가 변덕스럽고 한 치 앞을 내다볼 수 없을만큼 안개가 짙어서 난파되기 십상인 곳이지. 그리고 그에 걸맞게 간담이 서늘해지는 소문도 가지고 있는 곳이야.\r\n#b#L0#어떤 소문이죠?#l\n#k", ["4"] = "예전에 메이플 월드에 데비존처럼 포악한 해적들이 난립한 적이 있었지. 그때 이름은 알 수 없지만 매우 용맹했던 해군제독이 있었어. 그는 바다를 누비며 해적들을 소탕했지. 그의 함대는 백전백승이었어. 그러던 어느 날, 그의 함대는 감쪽같이 사라져 버리고 말았지. 연기처럼 말이야. 그 후, 십여 년이 흐른 어느 날, 그 함대가 다시 나타난 거야. 바로 안개바다에서.... 유령선의 모습으로 말이지.\r\n#b#L0#흐익!.......유령선이요?#l\n#k", ["5"] = "껄껄~ 고깃배들 사이에서 떠도는 소문일 뿐이야. 나도 눈으로 본 적은 없지. 하지만 자네라면 왠지 이 이야기에 관심을 가질 줄 알았어. 그래! 자네가 한번 조사해 보면 어떻겠어? 안개바다의 사라진 유령선에 대해서 말야."},
	["yes"] = {["1"] = "역시 자네라면 관심을 가질 줄 알았지. 하지만 나도 마땅히 줄 수 있는 단서는 없군. 그렇지. 아쿠아리움과 백초마을을 오가는 돌고래 택시라면 뭔가를 알 수 있을 지도 몰라. 비록 바다 밑을 지나가긴 하지만 안개바다를 지나다니고 있으니까 말이야. 혹시 유령선을 진짜 봤을 수도 있잖아?"},
	["no"] = {["1"] = "껄껄~ 역시 자네도 보통 사람이었군. 그래 누구나 이런 이야기를 들으면 무서워 할거야. 안 그런가?"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
		["3"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "조심하시오. 남겨진 자여....제독님의 분노가 배를 흔들고 있다오."},
	["stop"] = {
		["npc"] = {["1"] = "돌고래 택시는 만나 본건가? 안개바다로 가려면 그의 도움이 필요할거야."},
	},
}
return nTable
end