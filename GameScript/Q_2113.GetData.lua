return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1063007,
	["lvmax"] = 54,
	["interval"] = 1440,
	["quest"] = {{["id"] = 2107, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1061011,
	["mob"] = {
		[1] = {["id"] = 9101001, ["count"] = 999}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3500,
	["item"] = {
		{["id"] = 2000003, ["count"] = 50}
	},
}
nTable["info"] = {
	["name"] = "위험한 던전!! <3-좀비버섯>",
	["0"] = "개미굴 어딘가에 몬스터를 경고하는 표지판이 있다는데…",
	["1"] = "#o2230101# #b999 마리#k를 퇴치한 후 기억하고 있는 자를 찾아가시오. \n \n#o9101001# #r#a21131##k",
	["2"] = "#o2230101#을 퇴치해 보았지만, 그 수는 줄지 않았다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "이것 999마리를 잡아오시오! #r - #p1061011# - "},
	["yes"] = {["1"] = "동료들과 함께 퇴치한 후 #r#p1061011##k에게 보고하시오!"},
	["no"] = {["1"] = "..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "앗! 정신집중! 휴~ 공중부양 수행은 자칫 흐트러지면 모든 게 수포로 돌아가게 된다는 말이지. 다음엔 좀 조용히 말 걸어다오. ", ["2"] = "무슨 일이지? 이 공중수양에 관심이라도? 이건 아무나 할 수 있는 게 아닌데… 앗! 너! #b#o2230101#을 999마리#k나 퇴치했군. 네 등 뒤에 999마리의 #o2230101#이 맴돌고 있어. 대단하군!"},
	["yes"] = {["1"] = "보상을 바라고 한 건 아니겠지만, 약한 자를 위해 힘써줬으니 감사의 표시라네.", ["2"] = "여기서 여행을 끝내는 건 아니겠지? 저 던전 안에는 위험한 몬스터가 많아. 내가 여기저기 표지판을 세워 두었으니, 한번 찾아보게. 후하게 보상하지! "},
	["stop"] = {
		["npc"] = {["1"] = "퇴치 후 #r기억하고 있는 자#k에게 보고하시오!"},
		["mob"] = {["1"] = "휴~ 자칫 수양이 끝날 뻔 했소. 조용히 얘기해 주게. 아! 내가 세워놓은 표지판이 잘 이해가 안 된다는 거군. #b좀비 버섯 999마리#k를 퇴치하고 나에게 다시 오면 된다네."},
	},
}
return nTable
end