return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081300,
	["lvmin"] = 120,
	["quest"] = {{["id"] = 6922, ["state"] = 2}},
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
	["name"] = "레고르의 세 번째 이야기",
	["parent"] = "궁수 궁극의 길",
	["order"] = 4,
	["1"] = "#b#p2081300##k는 나에게 마지막 진실을 들려 주겠다며 준비가 되면 다시 말을 걸어달라고 했다.",
	["2"] = "#b#p2081300##k에게 세 번째 진실인 시간이 멈춘 호수에 대해 이야기를 들었다. 그는 능력을 증명할 준비가 끝나면 다시 말을 걸어달라고 했다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "그대에게 들려줄 세 번째 이야기는 시간이 멈춰버린 호수에 대해서이다. 이야기를 듣겠는가?"},
	["yes"] = {["1"] = "좋아. 그대라면 이 이야기를 들을 자격이 있지. 그럼 준비가 되면 다시 말을 걸도록."},
	["no"] = {["1"] = "이 곳을 찾아왔을 때의 용기는 어디로 간 것인가."},
}
nTable["say1"] = {
	["base"] = {["1"] = "리프레에서 북쪽으로 올라가면 숲보다 큰 호수가 있다. 사람들은 이 호수를 루더스호 또는 시간이 멈춰버린 호수라고 부르고 있지.", ["2"] = "호수 위에는 까마득한 탑으로 받쳐지고 있는 루디브리엄성이 있다. 루디브리엄성 한가운데 자리 잡은 거대한 시계탑의 성스러운 힘이 순수한 동심을 가진 채로 살 수 있도록 성의 시간을 멈춰버렸지.", ["3"] = "하지만 루디브리엄에 생긴 차원의 균열이 점점 커지고 있다. 차원의 균열로 침입한 사악한 힘들이 루디브리엄성을 변질시키고 있어. 알리샤르와 파풀라투스라는 차원의 침입자들의 힘이 점점 커지고 있는 것이 그대에게도 느껴질 것이다. "},
	["yes"] = {["1"] = "그대에게 이 이야기를 들려 준 이유는 그대도 잘 알고 있을 거라고 믿는다. 4차 전직을 한다는 것은 그만큼의 책임을 필요로 하는 일.", ["2"] = "메이플 세계를 좀 더 이해하고 영웅으로써 생각하고 행동할 수 있어야 한다. 그럼 이제 그대에게 4차 전직을 할 수 있는 마지막 과제를 주지.", ["3"] = "그대의 능력을 증명할 준비가 되면 다시 말을 걸어라."},
}
return nTable
end