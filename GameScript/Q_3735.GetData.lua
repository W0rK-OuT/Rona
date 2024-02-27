return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2082010,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3734, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2082004,
	["item"] = {{["id"] = 4032516, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 60000,
	["item"] = {
		{["id"] = 4032516, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "미사일의 잔해",
	["area"] = 41,
	["parent"] = "2215년 폭격의 날",
	["order"] = 6,
	["1"] = "봉이는 미사일이 떨어진 곳에서 이루워터와 로비들이 나오고 있다면서 조사를 하고 싶다면 가보라고 했다. 내가 뭔가를 찾고 있는 사람처럼 보인다니…둔한 사람인줄 알았는데 뭔가 예리한 구석도 있는 것 같다. 조사해 보고 뭔가를 얻게 된다면 앤디에게 가져가 보자.",
	["2"] = "봉이는 미사일이 떨어진 곳에서 이루워터와 로비들이 나오고 있다면서 조사를 하고 싶다면 가보라고 했다. 내가 뭔가를 찾고 있는 사람처럼 보인다니… 둔한 사람인줄 알았는데 뭔가 예리한 구석도 있는 것 같다. 폭격 당한 도심 한복판에 서있는 미사일 안드로이드 듀나스을 퇴치하고 얻은 시간모래를 앤디에게 가져갔다.",
	["demandSummary"] = "#i4032516:# #t4032516:# #c4032516# / 1\r\n",
	["rewardSummary"] = "경험치 60,000\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "그런데 바로 이 앞이 미사일이 떨어진 곳이거든요. 아무래도 이루워터와 로비들은 그 곳에서 만들어지고 있는 것 같아요. 그곳에 뭔가가 있는 것은 아닐까요? 조사를 해보고 싶다면 오른쪽으로 가보세요."},
	["yes"] = {["1"] = "뭔가를 찾을 수도 있지 않겠어요? 당신…뭔가를 찾으러 온 사람같이 보이거든요. 그럼 전 이만 가보겠습니다."},
	["no"] = {["1"] = "아. 역시 꺼려지시나 봐요. 그렇죠 아무래도 미사일이 떨어진 곳은 위험할 수도 있겠네요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이것은… 시간모래군. 시간모래는 시간의 기억을 담고 있지. 이 정도 양이면 많은 기억을 가지고 있을 거야. 좋아. 충분히 살펴볼 가치가 있어. 뭔가 단서가 모이는 느낌이 들지 않아?"},
	["yes"] = {["1"] = "계속 수고해줘."},
	["stop"] = {
		["npc"] = {["1"] = "뭔가를 찾았다면 그것을 찾고 있는 사람에게 가보는 것이 어떨까요?"},
		["item"] = {["1"] = "뭔가 단서를 찾지는 못했어?"},
	},
}
return nTable
end