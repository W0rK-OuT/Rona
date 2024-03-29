return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2032001,
	["lvmin"] = 83,
	["quest"] = {{["id"] = 3111, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2012026,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 800,
}
nTable["info"] = {
	["name"] = "엘리쟈의 정원",
	["parent"] = "여신의 애완동물",
	["order"] = 2,
	["1"] = "엘리쟈의 분노가 어느 정도 가라앉은 것 같다며 스피루나는 #b엘리쟈와 대화#k를 시도해 보길 권했다. 엘리쟈는 하늘계단2, 쓰러진 기둥 뒤에 펼쳐진 #b엘리쟈의 정원#k에 가면 만날 수 있다는데... ",
	["2"] = "엘리쟈의 정원 한 쪽에 우아하게 앉아 있는 엘리쟈를 만났다. 분노로 흉폭해졌다는 말과 달리 그는 무척 침착하기만 한데...",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "수정구슬이 조금 이상하군... 엘리쟈는 확실히 이성을 되찾았는데, 곳곳에 붉은 기운이 흩어져 있어. 마치 엘리쟈가 여럿으로 갈라지기라도 한 것처럼... 하지만 그럴 리는 없겠지.", ["2"] = "엘리쟈의 분노가 어느 정도 가라앉은 것 같으니 그와 #b대화#k를 해보는 게 좋을 듯 싶구나. 이성을 잃고 분노했을 때는 두려운 자이지만 원래는 온화하고 차분한 성품이라고 하니... 대화를 통해 그가 더 이상 구름공원을 망가뜨리지 않도록 설득해라. "},
	["yes"] = {["1"] = "엘리쟈가 있는 곳의 위치는.... 수정구슬이 가리키길, 하늘계단2, 쓰러진 기둥 너머, #b엘리쟈의 정원#k에 있다고 하는군... 여신의 사랑을 받던 고대의 생물... 그라면 인간보다 높은 지성과 품격을 소유하고 있을 것이다. 무례하게 굴지 말도록... "},
	["no"] = {["1"] = "엘리쟈의 분노가 크다지만 네가 그에게 무례하지 않다면 그도 너를 함부로 대하지 않을 것이다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "...좋은 의도로 온 손님이라면 환영하지만, 그렇지 못한 자라면 조용히 떠나길 바랍니다. 이 조용하고 아름다운 정원을 더럽히는 자는 누구도 용서하지 못하니..."},
	["yes"] = {["1"] = "그대는 대화를 원해 이 곳에 온 자로군요... 다른 사람의 생각을 듣고 서로의 의견을 교환하는 것은 의식의 향상을 위해 좋은 일이지요. 무엇보다 즐거운 일이기도 하고... 당신을 환영합니다. "},
	["stop"] = {
		["npc"] = {["1"] = "아직 #r엘리쟈#k를 만나러 가지 않았군... 두려워 할 것 없다. 네가 호의를 갖고 그를 대한다면 그 역시 호의로 답할 것이니, 걱정하지 말고 하늘정원2로 가라. 쓰러진 기둥 너머에 그가 있을 것이다."},
	},
}
return nTable
end