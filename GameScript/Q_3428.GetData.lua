return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2051001,
	["lvmin"] = 50,
	["quest"] = {{["id"] = 3427, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2050020,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["nextQuest"] = 3429,
}
nTable["info"] = {
	["name"] = "수송선의 행방은?",
	["parent"] = "행방불명된 수송선",
	["order"] = 2,
	["1"] = "지구방위본부 사령실에 있는 #b포터#k 박사로부터 받은 편지를 격납고의 엔지니어 #b케이#k에게 시간내에 무사히 전해주었다. 연애편지인줄 알고 기대하고 있었는데… 행방불명된 수송선의 위치가 적혀 있는 편지였다니 왠지 시시한걸…? 케이는 나에게 로스웰 초원 근처에 있는 것으로 조사된 수송선을 찾아내어 안에 있던 파일럿의 생사를 확인해 달라고 부탁했다.",
	["2"] = "로스웰초원에서 불시착한 것으로 보이는 빈 수송선을 발견했다. 파일럿은 보이지않고, 편지 한통을 발견했다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "어머나~! 드디어 행방불명된 수송선의 위치를 알아낸 모양이에요! 얼마 전 중요한 임무를 가지고 출동했던 수송선이 본부로 돌아오던 도중에 연락 두절이 되어 지금까지 행방이 묘연했었답니다. 그런데 그 수송선의 위치를 드디어 알아냈다니... 좋아요! 그럼 당신께 다음 임무를 드리겠어요.", ["2"] = "방금 전해받은 편지에 따르면 로스웰 초원 근처에서 수송선의 위치 신호가 포착되고 있다고 하니 당신이 서둘러 그 일대를 수색해서 수송선과 그 안에 타고 있던 파일럿의 생사를 확인해 주세요. 수송선은 아무래도 좋지만... 수송선 안에 타고 있던 그가 부디 무사했으면 좋겠어요..."},
}
nTable["say1"] = {
}
return nTable
end