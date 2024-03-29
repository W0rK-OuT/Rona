return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060005,
	["lvmin"] = 30,
	["pet"] = {5000000, 5000001, 5000002, 5000003, 5000004, 5000005, 5000006, 5000007, 5000008, 5000009, 5000010, 5000011, 5000012, 5000013, 5000015, 5000020, 5000018, 5000024, 5000022, 5000023, 5000021, 5000026, 5000040, 5000043, 5000042, 5000046, 5000064, 5000068},
}
nTable["check1"] = {
	["npc"] = 2060005,
	["item"] = {{["id"] = 4031274, ["count"] = 1}, {["id"] = 4031275, ["count"] = 1}, {["id"] = 4031276, ["count"] = 1}, {["id"] = 4031277, ["count"] = 1}, {["id"] = 4031278, ["count"] = 1}},
	["pet"] = {5000000, 5000001, 5000002, 5000003, 5000004, 5000005, 5000006, 5000007, 5000008, 5000009, 5000010, 5000011, 5000012, 5000013, 5000015, 5000020, 5000018, 5000024, 5000022, 5000023, 5000021, 5000026, 5000040, 5000043, 5000042, 5000046, 5000064, 5000068},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["petspeed"] = 1,
	["exp"] = 3000,
	["pettameness"] = 10,
	["item"] = {
		{["id"] = 4031274, ["count"] = -1},
		{["id"] = 4031275, ["count"] = -1},
		{["id"] = 4031276, ["count"] = -1},
		{["id"] = 4031277, ["count"] = -1},
		{["id"] = 4031278, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "켄타의 조언",
	["0"] = "아쿠아리움 동물원에서 일하고 있는 조련사 켄타에게 펫과 함께 찾아가보자.",
	["1"] = "아쿠아리움 동물원의 조련사 켄타는 펫의 충성심이 올라가면 주인과 걷는 속도를 맞춰서 걷는다면서 충성심을 높이기 위한 한가지 제안을 했다. 아쿠아로드에 자신이 숨겨 놓은 #b종이 조각 5개#k를 펫과 함께 찾아오고 펫과의 친밀도를 #b15이상#k으로 올리라는 것이었다. 바다 밑에 가라앉아 있는 #b상자#k를 주의 깊게 살펴보라는 힌트까지 줬는데... 한번 찾아볼까?\n\n#i4031274##t4031274#  #b#c4031274##k / 1\n#i4031275##t4031275#  #b#c4031275##k / 1\n#i4031276##t4031276#  #b#c4031276##k / 1\n#i4031277##t4031277#  #b#c4031277##k / 1\n#i4031278##t4031278#  #b#c4031278##k / 1",
	["2"] = "아쿠아로드에 가라앉아 있는 상자를 뒤져서 종이조각 5개를 찾아서 펫과 함께 아쿠아리움 동물원으로 켄타를 찾아갔다. 켄타가 준 과제를 펫과 함께 하다보니 어느새 펫의 충성심이 올라가 있었고, 내 걷는 속도에 맞춰서 따라 걷기 시작했다.",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요. 아쿠아리움 동물원에서 조련사로 일하고 있는 켄타라고 합니다. 펫을 키우고 계시군요. 동물과 함께 하다보면 마음이 따뜻해지는걸 느낄 수 있죠. 그래서 저도 조련사가 되었답니다. 펫을 소중히 아끼고 돌봐주다 보면 펫도 주인에게 충성을 다하게 된답니다. ", ["2"] = "혹시 펫이 자꾸 뒤쳐지지는 않나요? 펫의 충성심이 낮으면 가끔 딴 짓을 하느라 주인을 못 쫓아 올 때가 있답니다. 하지만 펫의 충성심이 높아지면 주인이 걷는 속도에 맞춰서 주인을 따라가게 된답니다. 제가 펫의 충성심을 높일 수 있는 기회를 드릴까 하는데 어떠세요? 해보시겠어요? "},
	["yes"] = {["1"] = "잘 생각하셨어요. 펫의 충성심은 주인과 함께 어려움을 이겨낼 때 높아질 수 있답니다. 제가 드리는 과제를 펫과 함께 하시다 보면 펫의 충성심이 높아질 거에요. ", ["2"] = "지금부터 제가 아쿠아로드 곳곳에 숨겨 놓은 물건을 펫과 함께 찾아가지고 오세요. 찾아와야 할 것은 작은 종이조각이랍니다. 곳곳에 숨겨 놓은 서로 다른 #b종이조각 5개#k를 찾아서 가져와주세요. 그리고 돌아올 때는 반드시 펫과의 친밀도를 #b15 이상#k으로 만들어 가지고 오셔야해요. 친밀도가 쌓이지 않으면 충성심을 가지게 할 수 없겠죠?", ["3"] = "종이조각을 어디서 찾을 수 있을지 힌트를 조금 드릴까요? 바다 밑에 가라앉은 #b상자#k는 뭔가를 숨기기에는 딱이지요."},
	["no"] = {["1"] = "펫의 충성심을 높일 기회는 흔치 않은데 잘 생각해보시고, 생각이 바뀌시면 다시 찾아오세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "제가 숨겨놓은 종이조각을 모두 찾아오셨군요. 당신의 펫의 충성심도 올라간 것 같은데 느껴지세요?"},
	["yes"] = {["1"] = "한번 걸어보세요. 펫이 당신의 걸음을 잘 따라가고 있다는 것이 느껴지실거에요. 어느새 펫이 당신에게 충성할수록 펫을 더욱 아껴주셔야해요. 모든 동물들은 사랑스러운 존재랍니다."},
	["stop"] = {
		["item"] = {["1"] = "제가 숨겨 놓은 #b종이조각 5개#k를 꼭 찾아보세요. 펫과의 친밀도도 반드시 #b15이상#k으로 올리시구요. 아셨죠?"},
	},
}
return nTable
end