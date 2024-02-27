return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2112014,
	["lvmin"] = 70,
	["quest"] = {{["id"] = 3365, ["state"] = 1}},
}
nTable["check1"] = {
	["npc"] = 2112014,
	["mob"] = {
		[1] = {["id"] = 9300153, ["count"] = 100}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 100,
	["pop"] = 1,
}
nTable["info"] = {
	["name"] = "연구 방해물 제거하기",
	["0"] = "힘들게 연구하는 유레테를 위해, 그의 연구를 돕기로 약속했다. 어떤 일을 도와주면 될까? #b유레테#k를 찾아가 보자. ",
	["1"] = "유레테는 그의 연구를 방해하는 몬스터의 제거를 부탁했다. 그가 예전에 실험하며 만든 몬스터들이 그의 연구를 방해하는 모양이니, 어서 연구 방해물을 퇴치해 주자. \n\n#o9300153# #r#a33681##k ",
	["2"] = "실험실을 장악하고 있던 연구 방해물들을 모두 제거했다. 유레테는 이제야 그 실험실을 쓸 수 있다며 안도의 한숨을 쉬었다.",
	["area"] = 47,
	["sortkey"] = "28",
}
nTable["say0"] = {
	["base"] = {["1"] = "자네에게 부탁할 일은 몬스터를 퇴치하는 일이라네. 실험실에 왠 몬스터냐고? 그게... 예전에 실험하면서 만든 몬스터들인데, 조종용 연성진이 망가져 버려서... 자네가 그 #r연구 방해물#k들을 퇴치해 주었으면 하는데, 어때? 가능하겠는가?"},
	["yes"] = {["1"] = "그럼 실험실 안에 있는 세 개의 문 중, 마지막 문으로 들어가게. 그 안에 있는 #r방해물 뮤테#k들은 모두 연구에 불필요한 녀석들이니, 녀석들을 제거해 주면 된다네. 그럼 부탁하지. "},
	["no"] = {["1"] = "음... 어려운 모양이군. 프랑켄로이드와도 싸웠던 자네라면 그리 어렵지만은 않은 일이라 생각되는데... "},
}
nTable["say1"] = {
	["base"] = {["1"] = "아... 연구를 방해하던 녀석들을 모두 제거한 모양이군. 자네처럼 강한 모험가라면 그리 어렵지 않을 줄 알았지. 정말 고맙네."},
	["yes"] = {["1"] = "그 동안 몬스터들이 점령하고 있는 바람에 쓰지 못하던 연구실인데, 자네 덕분에 이제 쓸 수 있게 되었군. 다양한 실험을 동시에 진행하면 훨씬 더 효과적으로 연구할 수 있을 걸세."},
	["stop"] = {
		["mob"] = {["1"] = "아직 #r방해물 뮤테#k들을 모두 제거하지 못한 모양이군... 천천히 해도 좋지만, 확실히 없애 주게."},
	},
}
return nTable
end