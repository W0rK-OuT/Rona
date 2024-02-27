return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081300,
	["lvmin"] = 120,
	["quest"] = {{["id"] = 6920, ["state"] = 2}},
	["job"] = {311, 321},
}
nTable["check1"] = {
	["npc"] = 2081300,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "레고르의 첫 번째 이야기",
	["parent"] = "궁수 궁극의 길",
	["order"] = 2,
	["1"] = "#b#p2081300##k는 나에게 첫 번째 진실을 들려 주겠다며 준비가 되면 다시 말을 걸어달라고 했다.",
	["2"] = "#b#p2081300##k에게 첫 번째 진실인 자쿰에 대한 이야기를 들었다. 그는 아직 두가지 이야기가 남았다고 했다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "그대에게 들려줄 첫 번째 이야기는 용암화산 깊은 곳으로 사라진 마을에 대해서이다. 이야기를 듣겠는가?"},
	["yes"] = {["1"] = "좋아. 그대라면 이 이야기를 들을 자격이 있지. 그럼 준비가 되면 다시 말을 걸도록."},
	["no"] = {["1"] = "이 곳을 찾아왔을 때의 용기는 어디로 간 것인가."},
}
nTable["say1"] = {
	["base"] = {["1"] = "엘나스 산맥에 있는 용암화산 깊은 곳까지 들어가 본 적이 있는가? 오래 전 엘나스보다 더 깊은 곳에 마을이 하나 있었지.", ["2"] = "그 마을 사람들은 사람의 형상을 한 석상과 화산을 숭배했다. 그들은 자신들의 믿음을 증명하기 위해 화산 가장 안 쪽에 있는 나무 아래에 석상을 세우고 제단을 만들어 숭상했지. 어리석게도.", ["3"] = "재앙은 바로 그때부터 시작되었다. 화산 깊은 곳에 있던 그 나무는 사악한 자쿰의 나무였던 것이지. 육체가 없던 자쿰의 나무는 마을 사람들이 세운 석상에 깃들어 부활하고야 말았다.", ["4"] = "그 후, 그 마을은 자취도 없이 사라지고 말았지. 메이플 세계를 오랫동안 여행했으니 용암화산 밑에 잠들어 있는 #b자쿰#k이라는 몬스터에 대해 들어본 적이 있을 터. 그렇지 않은가?"},
	["yes"] = {["1"] = "첫 번째 진실에 대한 이야기는 여기까지다. 두 번째 이야기를 들을 준비가 되면 다시 말을 걸기를."},
}
return nTable
end