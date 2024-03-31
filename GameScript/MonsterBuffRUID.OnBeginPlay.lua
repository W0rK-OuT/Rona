return function (self) 
-- 몬스터가 머리 위에 효과

local nTable = {}
nTable[1201006] = "299ae234102c4d2ab67aec470b7f4fae" -- 위협

nTable[2101005] = "c3d148029c7b4f419086ba0990887af9" -- 포이즌 브레스
nTable[2111003] = "c3d148029c7b4f419086ba0990887af9" -- 포이즌 미스트

nTable[2101003] = "ec7a0b11a6f34e40b17c875d360ee24c" -- 슬로우
nTable[2201003] = "ec7a0b11a6f34e40b17c875d360ee24c" -- 슬로우

nTable[2111004] = "7f8c0f4a52da4fb387c91d2f056296fd" -- 씰
nTable[2211004] = "7f8c0f4a52da4fb387c91d2f056296fd" -- 씰

nTable[3121007] = "ec7a0b11a6f34e40b17c875d360ee24c" -- 슬로우 햄스트링
nTable[3221006] = "0547c30fd21342df8ccb28ff543c09cb" -- 암흑 블라인드

nTable[4121003] = "f5701f1c8df54202bc55e31b47a9526b" -- 쇼다운
nTable[4221003] = "f5701f1c8df54202bc55e31b47a9526b" -- 쇼다운

nTable[4121004] = "40f3b4e9d3c44100a4f8fd55e6b75551" -- 닌자 앰부쉬
nTable[4221004] = "40f3b4e9d3c44100a4f8fd55e6b75551" -- 닌자 앰부쉬

nTable[4120005] = "c3d148029c7b4f419086ba0990887af9" -- 베놈
nTable[4220005] = "c3d148029c7b4f419086ba0990887af9" -- 베놈

self.ruid = nTable

local mobUseTable = {}
mobUseTable["100/1"] = "0d4c29c0d6e847f8b1b163d53b02fae1"
mobUseTable["100/2"] = "0d4c29c0d6e847f8b1b163d53b02fae1"
mobUseTable["100/3"] = "0d4c29c0d6e847f8b1b163d53b02fae1"
mobUseTable["100/4"] = "959dcaf545ef43938e390fd7f754efda"
mobUseTable["100/5"] = "959dcaf545ef43938e390fd7f754efda"
mobUseTable["100/22"] = "0d4c29c0d6e847f8b1b163d53b02fae1"
mobUseTable["100/23"] = "0d4c29c0d6e847f8b1b163d53b02fae1"

-- 완료 --
mobUseTable["140/1"] = "032296d9010a466c8dce858b876a5270" -- 0
mobUseTable["140/2"] = "032296d9010a466c8dce858b876a5270" -- 0
mobUseTable["140/3"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/4"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/5"] = "032296d9010a466c8dce858b876a5270" -- 2
mobUseTable["140/6"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/7"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/8"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/9"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/10"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/11"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/12"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/13"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/14"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2
mobUseTable["140/16"] = "" -- 1
mobUseTable["140/17"] = "0f6ba0530e774daf962b115b40b85dfa" -- 2


mobUseTable["141/1"] = "9c78917fba574fdba4af53a22f966f06"

self.mobUseRuid = mobUseTable
end