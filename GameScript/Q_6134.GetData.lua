return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061011,
	["quest"] = {{["id"] = 6133, ["state"] = 2}},
	["job"] = {232},
}
nTable["check1"] = {
	["npc"] = 1061011,
	["item"] = {{["id"] = 4031448, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000000,
	["item"] = {
		{["id"] = 4031448, ["count"] = -1}
	},
	["skill"] = {
		{["id"] = 2321006, ["masterLevel"] = 10, ["job"] = {232}}
	},
}
nTable["info"] = {
	["name"] = "리저렉션",
	["parent"] = "카론의 노트",
	["order"] = 5,
	["1"] = "#p1061011#에게 나에게도 죽은 사람을 되살릴 수 있는 비법을 가르쳐 달라고 부탁하자 그는 죽음을 체험해야 한다면서 #b루디브리엄 시계탑 최하층#k, #b타나토스#k가 지키고 있는 죽음의 문 건너편에 있는 죽음과 같은 어둠을 경험하고 돌아오라고 했다.  \n\n#i4031448##t4031448# #b#c4031448#/1#k",
	["2"] = "힘든 시험이었다. 이걸로 #b#q2321006##k이라는 힘을 얻었다. 기억하고있는 자는 절대 힘을 함부로 쓰지 말라고 했다. 그의 말대로, 이 힘은 강하지만 법칙을 깨는 힘… 조심해야 할 듯…",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "무엇을 원하는 것인지 알고 있다… #b죽음을 이기는 힘#k을 갖고 싶은 것이겠지… 하지만 이 힘은 법칙에 위배되는 힘. 강한 정신력의 소유자가 아니라면, 이 힘을 가질 자격이 되지 않는다. ", ["2"] = "너는 진정 이 힘을 원하는 거냐?"},
	["yes"] = {["1"] = "그렇다면, 시험을 통과해라. ", ["2"] = "시험은, 죽음을 체험하는 것이다. 루디브리엄에 있는 시계탑 최하층에는 공포 이상의 유혹, 죽음의 문을 지키는 자, 타나토스가 있다. 그가 지키고 있는 문을 통과하여 문의 건너편으로 들어가라. 그 곳에서라면, 진정한 죽음을 체험할 수 있겠지. ", ["3"] = "한가지 힌트를 줄까? 그것은 아무것도 보이지 않는 어둠과 비슷하다. 어둠은 공포이며, 동시에 편안한 유혹이지… 네가 그것을 이기고 #b#t4031448##k를 가져올 수 있을까?"},
	["no"] = {["1"] = "역시 두려워진 것인가? 두려움을 갖는다는 건 현명하다는 의미도 되지…"},
}
nTable["say1"] = {
	["base"] = {["1"] = "결국 통과하고 말았군… "},
	["yes"] = {["1"] = "시험을 통과했다는 것은, 네가 많은 것을 보았다는 것이다. ", ["2"] = "네가 본 것, 네가 들은 것, 네가 느낀 것! 그 모든 것들은 죽음이었다. 그것을 체험하고도 정신을 유지하고 있다면 너에게는 힘을 가질 자격이 있다. 죽음의 유혹을 뿌리치고, 그 공포를 이기고… 그 법칙을 깨뜨리는 힘. #b#q2321006##k. 그것이 너에게 주어지게 될 것이다.", ["3"] = "시험을 통과한 너라면 잘 알고 있겠지만 위험한 힘이다. 함부로 사용하지 말아라… 그것만이 너에게 해줄 수 있는 충고…"},
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t04031448##k를 구해오지 못한 것인가? 그렇다면 차라리 물러서는 것이 현명할지 모르겠군. "},
	},
}
return nTable
end