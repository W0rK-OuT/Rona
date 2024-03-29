return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2020009,
	["lvmin"] = 120,
	["quest"] = {{["id"] = 6261, ["state"] = 2}},
	["job"] = {222},
}
nTable["check1"] = {
	["npc"] = 2030000,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 500000,
}
nTable["info"] = {
	["name"] = "설산의 얼음",
	["parent"] = "고대의 빙석",
	["order"] = 3,
	["0"] = "#b#p2020009##k는 이 책의 정체를 단번에 알아보았다.",
	["1"] = "#q2221003#을 얻고 싶다면 엘나스 설산의 관리자 #b#p2030000##k에게 가 보라는 #b#p2020009##k. 얼음을 들이킨다니… 아무리 설산의 관리자라고 한들, 그런 방법에 대해 알고 있을까?",
	["2"] = "설산의 관리자 #b#p2030000##k는 고대의 문자가 새겨진 얼음 조각은 마법의보호를 받기에 그것을 깨뜨리는 것은 말도 안 되는 일이라고 일축했다. 하지만 여기서 포기하기엔 #r#q2221003##k이라는 마법이 너무도 매력적이다. 하지만 장인 #b#p2020000##k이라면 고대의 얼음을 깨뜨릴 망치를 만들 수 있을 거라는데…",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "지금까지 #b#q2221003##k에 대해 연구한 연구 결과와 이 책이 문장, 그리고 전설을 조합해서 생각해 보면… 이 문장에서 삼킨다, 라는 것은 은유가 아닌 정말 삼킨다는 의미로 추측되는군. 말도 안 된다고? 그럴지도 모르지… 하지만 그만한 모험을 해볼만한 가치가 있지 않은가?", ["2"] = "너는 얼음을 다루는 마법사 중에서도 제법 출중한 능력을 가진 자로 보이는군. 너라면 오랫동안 염원해온 #q2221003# 마법을 얻을 수 있을지도 모르지. ", ["3"] = "물론 쉽지 않을 것이다. 하지만 네가 원한다면 오시리아 마법사들의 장로로서,#r#q2221003##k에 관한 힌트를 줄 수도 있다. 어떠냐. 모든 위험을 감수하고도 #q2221003# 마법을 얻고 싶으냐?"},
	["yes"] = {["1"] = "#q2221003# 마법을 얻고 싶다면 엘나스 설산의 관리자 #b#p2030000##k에게 가봐라. 이 마법서가 진짜인지 가짜인지는 알 수 없지만, 허황된 소문이라도 시험할 가치가 있으니."},
	["no"] = {["1"] = "역시 넌 겁쟁이였군. 그렇다면 #q2221003#을 얻을 자격이 없다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "…무슨 볼 일이라도 있소?"},
	["yes"] = {["1"] = "마법서? #r#q2221003##k? 그런 말을 하는 걸 보면 당신은 마법사인 모양이군. 하지만 당신도 이 설산의 마법에 대해서는 잘 모르는 모양이지? ", ["2"] = "엘나스 설산의 빙석에는 고대의 마법이 걸려 있어, 그 보호를 받는 빙석들은 녹지도 깨지지도 않지. 얼음을 들이켜서 기관지가 얼어붙어 버리기 전에, 일단 빙석을 깰 수조차 없어. 그러니 당신이 말하는 것은 무리야. ", ["3"] = "아니, 아니지. 어쩌면 만들 수 있는 자가 있을지도 모르겠군. #b#p2020000##k이라고 아시는가? 엘나스 최고의 장인이지. 그라면 저 설산의 마법을 깨뜨릴만한 강력한 망치를 만들 수 있을지도 모르지."},
	["stop"] = {
		["npc"] = {["1"] = "#r#q2221003##k를 얻고 싶지 않은 거냐? #b#p2030000##k에게 가 보라고 했을텐데. 갈 생각이 없다면 그 책을 넘기도록."},
	},
}
return nTable
end