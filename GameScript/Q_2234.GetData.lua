return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002103,
	["quest"] = {{["id"] = 2233, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1002103,
	["endscript"] = "q2234e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "이름난 모험가의 특권을 누려보자!",
	["area"] = 30,
	["0"] = " ",
	["1"] = "이번 과제는 바로 #r이름난 모험가의 특권#k을 맛보는 것이다! #b리더 알#k의 주문은 특권을 사용해 #r현재 명성도를 500까지 소비#k해보라는 것이었다. 게다가 명성도를 충분히 쌓았는지 확인해 보기 위해 총 명성도를 2,000까지 만들라고 했지? 목표를 달성하면 리더 알에게 돌아가자.\n\n#r총 명성도 2,000 이상\n현재 명성도 500 이하#k\n(패밀리 창을 열어 현재 명성도와 총 명성도를 확인해 보자)",
	["2"] = "리더 알은 모든 과제를 훌륭히 수행한 내게 훌륭한 엘더가 될 자질이 충분하다며 치켜세워 주었다. 그리고 주니어를 비롯한 패밀리원들을 잘 이끌어주는 것이 가장 중요하다고 재차 강조하였다. 앞으로도 패밀리에 관해 궁금한 것이 있으면 리더 엘에게 가서 물어보도록 하자. 자, 그럼... 나도 남 부럽지 않은 패밀리를 만들도록 노력해 볼까?",
	["parent"] = "리더 알의 노하우 전수",
	["order"] = 3,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네는 정말 뛰어난 모험가였군. 이렇게 적응을 잘 할줄은 나도 몰랐네. 마지막 과제에 도전해볼텐가?"},
	["yes"] = {["1"] = "자네의 높아진 명성도를 보니... 나도 정말 감탄할 뿐이네. 하지만, 패밀리의 진정한 묘미는 명성도가 아닐세. 그것은 바로 유명한 모험가들만 누릴 수 있다는 #b이름난 모험가의 특권#k! 자네 정도의 명성도라면 이미 사용할 수 있는 특권이 있겠군... ", ["2"] = "자네에게 내가 주문하는 마지막 과제는 바로 이 특권을 직접 사용해보라는 것일세. 패밀리 창에 표시되는 명성도는 '/'를 기준으로 왼쪽이 현재 명성도, 오른쪽이 총 명성도를 나타내는데, 특권을 사용할 때는 현재 명성도만 소비가 된다네. 총 명성도는 일종의 기록이라고 할 수 있지. ", ["3"] = "#r총 명성도 2,000 이상#k 달성하고 #r현재 명성도를 500 이하#k까지 소비한 후 나에게 돌아오면 되네. 패밀리 창을 열어서 명성도를 확인하는 것을 잊지 말게나. 그럼 행운을 빌겠네!"},
	["no"] = {["1"] = "다시 한번 생각해보게. 지금 자네의 컨디션은 최고처럼 보이는데...."},
}
nTable["say1"] = {
}
return nTable
end