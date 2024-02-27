return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2050001,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 3406, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2050001,
	["item"] = {{["id"] = 4031141, ["count"] = 1}, {["id"] = 4031142, ["count"] = 1}, {["id"] = 4031143, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 4200,
	["item"] = {
		{["id"] = 2030011, ["count"] = 3},
		{["id"] = 2030012, ["count"] = 3},
		{["id"] = 4031141, ["count"] = -1},
		{["id"] = 4031142, ["count"] = -1},
		{["id"] = 4031143, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "로봇 부품 회수",
	["0"] = "지구방위본부의 김박사를 찾아가보자.",
	["1"] = "로봇 부품을 전달해 주었던 김박사를 다시 찾았다. 김박사는 누군가 부품 상자 3개를 모두 훔쳐가 버렸다면서 로스웰 초원의 숨겨진 장소로 가서 외계인들의 상자를 부수고 그 안에서 부품 상자 3개를 되찾아 돌아와 달라는 부탁을 해왔다.\n\n#i4031141# #t4031141# #b#c4031141##k/1\n#i4031142# #t4031142# #b#c4031142##k/1\n#i4031143# #t4031143# #b#c4031143##k/1",
	["2"] = "지구방위본부 사령실의 김박사에게 외계인들이 훔쳐간 로봇 부품 상자 3개를 모두 찾아 가져다 주었다. 이제 신형 로봇의 개발이 순조롭게 진행될 수 있겠지?",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "오오... 마침 잘왔네. 자네의 도움이 꼭 필요하던 참이었는데 이렇게 와 주었군 그래. 지난번에 자네가 루디브리엄에서 이곳까지 힘들게 가져다 준 부품 상자와 관련된 일인데... 어디 한 번 들어봐 주겠는가?"},
	["yes"] = {["1"] = "선뜻 시간을 내 주다니 정말 고맙네. 부품 상자를 누군가 노리고 있다는 정보를 듣긴 했지만 정말일지 누가 알았겠나. 3개의 상자 모두 누군가에게 도둑 맞았는데 아무래도 외계인들의 소행 같다네. 아마도 우리들이 강력한 신형 로봇을 보유하는 걸 두려워한 나머지 이런 일을 벌인 거겠지...", ["2"] = "한 가지 다행인 것은 자동귀환 장치의 미세한 반응을 통해 대충 상자의 위치를 알 수 있다는 것일세. 귀환 장치를 부숴뜨렸지만 완전히 파괴하진 못한 모양이야. 상자가 숨겨진 곳은 로스웰 초원이라네. 그 곳으로 가면 외계인들의 것으로 보이는 상자가 있을텐데 그걸 부수고 부품 상자를 되찾아 주게."},
	["no"] = {["1"] = "으음... 자네도 이런 저런 일들로 꽤나 바쁜 모양이지? 하지만 시급을 다투는 매우 중요한 일이네. 자네가 아니면 도움을 청할 사람이 아무도 없어! 마음이 바뀌게 된다면 꼭 다시 나를 찾아와 주게나."},
}
nTable["say1"] = {
	["base"] = {["1"] = "호오... 3개의 로봇 부품 상자를 모두 찾아와 주었군 그래! 도중에 외계인들의 방해가 상당했을 텐데 역시 대단한 사람이로군! 이 참에 우리 지구방위본부의 일원으로 들어오는건 어떤가...? 후후... 아무튼 정말로 수고했네. 이렇게 애써 주었으니 여분의 워프 캡슐을 더 주겠네. 부디 받아 주게나~!"},
	["yes"] = {["1"] = "자... 로봇 부품들도 모두 되찾았으니 다시 작업을 시작해 봐야겠군...! 아참! 그 전에 상자에 최신형 보안장치를 부착하는게 먼저지...! 또 외계인 녀석들에게 도둑맞으면 큰일이니까 말야. 그럼 나는 밀린 일이 많아 실례하겠네. 잘 가게나~!"},
	["stop"] = {
		["item"] = {["1"] = "흐음... 아직 3개의 로봇 부품 상자를 모두 찾지 못한 모양이로군. 로스웰 초원의 비밀스러운 장소에 있는 외계인들의 소굴로 가서 외계인들의 것으로 보이는 커다란 상자를 부수고 안에 있을지도 모르는 3개의 부품 상자를 모두 찾아와 주게나. 그럼 자네가 돌아오기만을 기다리고 있겠네!"},
	},
}
return nTable
end