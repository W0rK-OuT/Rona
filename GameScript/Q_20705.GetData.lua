return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1103001,
	["lvmin"] = 13,
	["quest"] = {{["id"] = 20704, ["state"] = 2}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1103001,
	["item"] = {{["id"] = 4032190, ["count"] = 1}},
	["mob"] = {
		[1] = {["id"] = 9300274, ["count"] = 50}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000,
	["item"] = {
		{["id"] = 4032190, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "시니컬한 주황버섯",
	["0"] = "#m100000000# 지역 정보원 #b#p1103001##k에게 기사단 임무를 듣자.",
	["1"] = "#p1103001#의 정보에 의하면 #o1210102#이 매우 의심스럽다고 한다. #o1210102# 중에 이상하게 표정이 차가운 녀석들이 있는데, 이 녀석들이 검은 마법사와 관계 있는 것 같다는 것이다. 그러니 #r#o9300274##k을 사냥 조사해 달라는데... \n\n#o9300274##r #a207051##k \n#i4032190# #t4032190# #b#c4032190# / 1#k",
	["2"] = "#o9300274#을 모두 사냥했다. #p1103001#는 계속해서 의심되는 것들을 확인해 보겠다며 나중에 다시 찾아와 달라고 말했다.",
	["area"] = 15,
}
nTable["say0"] = {
	["base"] = {["1"] = "아참, 이러고 있을 때가 아니지. 안 그래도 일손이 부족했는데와주셔서 정말 다행이에요! 최근에 #m100000000# 주변에서 이상한 일들도 많고, 검은 마법사의 수하에 대한 정보도 들어왔거든요. 어떤 일이냐고요? 그건... "},
	["yes"] = {["1"] = "#o1210102#이라는 몬스터를 아세요? 현지 적응 훈련 때 보셨다고요? 그럼 이야기가 빠르겠네요. 최근 #m100000000# 주변에 있는 #o1210102#들이 이상한 움직임을 보이고 있어요. 평소답지 않게 묘한 표정으로 음침하게 모여 있는 일이 자주 있어요.", ["2"] = "#o1210102#이라면 아무 생각 없어 보이는 밝은 얼굴이 특징인데 아무래도 이상하잖아요? 조사를 해보니 녀석들은 검은 마법사의 수하의 사주를 받아서 마을을 공격할 준비를 하고 있다지 뭐예요? 당신께서 #o1210102#들의 계획을 막아주세요! ", ["3"] = "그냥 #o1210102#들은 아무것도 몰라요. #m100000000# 주변에 있는, 표정이 이상하게 #r#o9300274##k만 퇴치하시면 돼요. 아마 #b마을 동쪽 어딘가에 본거지#k가 있지 않을까 하는데... #r50마리#k 정도 퇴치하면 될 것 같아요. 그럼 부탁 드릴게요!", ["4"] = "아, 그리고 혹시... #o9300274#을 사냥하다가 이상한 물건을 발견하면 같이 가져와 주세요. 뭔가 있을지도 모른다는 생각이 강력하게 드네요."},
	["no"] = {["1"] = "음. 은밀함을 요하는 일이니 좀 더 은밀한 장소에서 얘기할까요? #m100000000#에 은밀한 장소가 어디 있더라...? ...없는 것 같은데. 에. 그냥 대충 얘기 하죠?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o9300274# 50마리를 모두 퇴치하셨군요! 이야, 정말 대단하시네요! 역시 기사들은 다들 믿음직하다니까? 이걸로 #o1210102#의 #m100000000# 전복 계획은 무사히 막을 수 있었어요!"},
	["yes"] = {["1"] = "그럼 전 계속 검은 마법사의 동태를 조사해 볼게요! 뭔가 이상이 있는 것 같으면 바로 연락할 테니, 그때까지 당신은 좀 더 수련에 열중해주세요! #b헤네시스 사냥터1#k같은 곳에서 수련하는 것도 좋죠? #b레벨 14#k가 되면 다시 찾아와 주세요!"},
	["stop"] = {
		["item"] = {["1"] = "아직 #r#o9300274# 50마리#k는 퇴치하지 못하신 건가요? #m100000000# 마을 가까이에 있을 텐데... #b#m100010000##k 어딘가에 녀석들이 잔뜩 있는 본거지로 통하는 입구가 있다는 소문을 들은 것 같기도 하고..."},
		["mob"] = {["1"] = "아직 #r#o9300274# 50마리#k는 퇴치하지 못하신 건가요? #m100000000# 마을 가까이에 있을 텐데... #b#m100010000##k 어딘가에 녀석들이 잔뜩 있는 본거지로 통하는 입구가 있다는 소문을 들은 것 같기도 하고..."},
	},
}
return nTable
end