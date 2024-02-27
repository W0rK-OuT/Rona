return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040011,
	["lvmin"] = 35,
	["quest"] = {{["id"] = 3220, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2040011,
	["item"] = {{["id"] = 4000100, ["count"] = 20}},
	["mob"] = {
		[1] = {["id"] = 3230103, ["count"] = 25}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 8600,
	["item"] = {
		{["id"] = 1082002, ["count"] = 1, ["job"] = 1180673},
		{["id"] = 1082035, ["count"] = 1, ["job"] = 2099202},
		{["id"] = 1082055, ["count"] = 1, ["job"] = 4198404},
		{["id"] = 1082069, ["count"] = 1, ["job"] = 8200},
		{["id"] = 1082047, ["count"] = 1, ["job"] = 16400},
		{["id"] = 1082192, ["count"] = 1, ["job"] = 32800},
		{["id"] = 4000100, ["count"] = -20}
	},
}
nTable["info"] = {
	["name"] = "에오스탑 보수 작업 돕기",
	["0"] = "에오스탑에 있는 #b#p2040011##k를 찾아가보자.",
	["1"] = "에오스탑에서 #p2040011#을 다시 만났다. 녀석은 보수할 곳은 많지만 주변에 있는 몬스터들 때문에 작업이 힘들다며 #b킹 블록퍼스를 25마리#k 쓰러뜨리고 #b플라스틱 왕관도 20개#k 모아와 달라는 부탁을 해왔다. 귀찮지만 한 번 해볼까나…\n\n#o3230103# #r#a32241##k\n\n#i4000100##t4000100# #b#c4000100##k/20",
	["2"] = "에오스탑에서 만난 #p2040011#에게 부탁대로 킹 블록퍼스를 쓰러뜨리고 플라스틱 왕관을 모아 가져다 주었다. 그나저나 도대체 이 탑의 보수 작업은 언제쯤 끝나는 걸까… 빨리 보수가 끝나서 이 녀석들의 부탁을 받는 일이 없어졌으면 좋겠는걸~",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "음... 이 부분은 수리한 지 얼마 되지 않은 곳인데 벌써 이렇게 구멍이 뻥 뚫려 버리다니... 대체 어찌된 영문인지 모르겠네... 엇? 지난번에 절 찾아오셨던 분이시군요. 그런데 오늘은 이곳까지 어쩐 일이신가요? 혹시... 바쁘지 않다면 제 얘기좀 들어주실수는 없을까요?"},
	["yes"] = {["1"] = "후후... 잘 생각하셨어요. 다른 오뚝이 일꾼들과 마찬가지로 저도 이곳을 열심히 수리하는 임무를 맡고 있어요. 그런데 이 주변에 있는 몬스터들 때문에 보수를 해도 계속 수리가 필요한 곳이 늘어만 가지 뭡니까. 워낙 사나운 몬스터들이 많아서 저로서는 손 쓸 수가 없답니다.", ["2"] = "이 주변에 있는 몬스터들의 수를 저 대신 좀 줄여주셨으면 합니다. 애를 먹이고 있는 몬스터는 #b#o3230103##k라는 녀석들이에요. 이 놈들을 25 마리 쓰러뜨리고 돌아와 주세요. 그리고 녀석들이 주는 #b#t4000100##k도 20개 모아와 주셨으면 합니다. 그럼 부탁드릴게요!"},
	["no"] = {["1"] = "에구구... 지금은 바쁘신 모양이군요. 저도 가능하면 다른 사람의 도움 없이 혼자 해결해 보고 싶지만 제 능력밖의 일이라서 말이죠... 나중에라도 시간이 되신다면 꼭 다시 절 찾아와 주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이제서야 돌아오셨군요. 생각보다 오래 걸렸는걸요? 후후... 어디보자... #b#o3230103##k는 25 마리 모두 쓰러뜨리셨고 #b#t4000100##k도 20개 전부 모아와 주셨군요. 다른 일로 바쁘실텐데 이렇게 제 부탁을 들어주셔서 정말 감사합니다. 별 것 아니지만 받아주세요."},
	["yes"] = {["1"] = "잘 받으셨나요? 작업을 할 때 필요할 것 같아서 집에서 나올 때 가져온 장갑인데 아무래도 저보다는 당신에게 더 필요한 물건인 것 같아 이렇게 드립니다. 그럼 저는 계속해서 하던 일을 해야 겠네요. 부디 안전하게 돌아가세요~"},
	["stop"] = {
		["item"] = {["1"] = "벌써 돌아오셨군요? 어디보자... #b#o3230103##k는 25 마리 모두 쓰러뜨리신 것 같은데 #b#t4000100##k는 아직 다 모으지 못하신 것 같아요. #b#t4000100##k 20개도 함께 모아서 가져와 주세요. 탑 내부를 꾸미는 데 좋은 재료가 될 수 있을것 같거든요."},
		["mob"] = {["1"] = "돌아와 주셨군요. 그런데 아직 제가 말씀드린 몬스터를 전부 쓰러뜨리지 못하신 것 같아요. 탑을 망가뜨리고 있는 #b#o3230103##k를 25마리 쓰러뜨리고 #b#t4000100##k도 20개 함께 모아서 가져와 주세요."},
	},
}
return nTable
end