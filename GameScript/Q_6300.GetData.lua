return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081000,
	["job"] = {112, 122, 132, 212, 222, 232, 312, 322, 412, 422, 434, 512, 522, 2112, 2217, 2218},
	["skill"] = {{["id"] = 1121011}},
}
nTable["check1"] = {
	["npc"] = 2060100,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 20000,
}
nTable["info"] = {
	["name"] = "카르타의 죄",
	["parent"] = "굳은 의지",
	["order"] = 1,
	["0"] = "#b#m240000000# 마을#k의 #b#p2081000##k가 어떤 정보를 알고 있다고 하는데…",
	["1"] = "오래 전의 인간들은 지금보다 훨씬 강한 의지를 가지고 있었고, 그래서 몬스터가 사용하는 미혹의 마법에 걸리지 않았다고 한다. 하지만 #b마녀 #p2060100##k가 인간들의 미혹에 저항할 수 있는 의지를 빼앗아 버렸기에 미혹에 빠지게 되었다고 하는데… 정말일까? #p2060100#에게 가보자.",
	["2"] = "#p2060100#는 달가워하지 않는 표정이다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네는 인간 중에서도 가장 강한 자로 보이는군. #b강한 의지#k가 없다면 그렇게 강해지는 건 불가능하지. 그런데 알고 있는가? 보통의 요정이나 하프링들은 인간과 달리 강한 자이건 약한 자이건 간에, 미혹에 걸리지 않는다는 것을…?", ["2"] = "오래 전에는 인간도 그랬지. 몬스터가 사용하는 미혹의 마법은, 몬스터들에게는 통하지만 맑은 의지를 가진 자들에게는 통하지 않았어. 인간 역시 그랬지만… 잘못된 길에 들어선 누군가가, 그것을 망쳐 버렸다네. 혹시 아는가? #b마녀 #p2060100##k를 말일세.", ["3"] = "#p2060100#의 많은 죄 중에, 바로 의지를 빼앗은 죄도 있다네. 인간들이 가지고 있는 #b미혹에 저항하는 힘#k을 모두 빼앗아 버렸거든. 그녀의 인간에 대한 증오가 끔찍한 죄를 만들었지… ", ["4"] = "믿어지지 않는다는 표정이군. 하지만 자네의 경험이 그것을 증명할 걸세. 자네 정도로 강한 자라면 몬스터의 미혹에 빠져 몸을 통제할 수 없게 된 경험이 있을 것 같은데. 아닌가? 그것이 #b#p2060100#의 저주#k의 결과라네. ", ["5"] = "미혹에 저항하는 의지. 어떤 수련으로도 그 힘은 만들기가 어렵다네. #p2060100#가 가져가 버렸으니까. 혹시 자네가 그것을 되찾고 싶다면… #p2060100#에게 가 보게. 자네처럼 강한 사람이 정신을 유지하지 못한다면, 세계 전체에 위협이 될 테니까… 꼭 #b의지#k를 되찾길 바라네."},
	["yes"] = {["1"] = "#p2060100#는 바다 깊은 곳 어딘가에서 홀로 마법을 연구하고 있다네. 그녀가 의지를 순순히 주지는 않을 거야."},
	["no"] = {["1"] = "싫다면 어쩔 수 없겠지… 인간은 그녀에게서 의지를 되찾을 자격이 없을지도 모르겠군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이 깊은 바다 속까지 찾아왔다는 건, 무언가 중대한 볼 일이 있다는 것일 텐데… 무슨 일이지? 당신 같이 강한 자는 달갑지 않아. "},
	["stop"] = {
		["npc"] = {["1"] = "#b#p2060100##k가 순순히 의지를 주지는 않을 거야."},
	},
}
return nTable
end