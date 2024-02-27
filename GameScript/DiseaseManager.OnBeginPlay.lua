return function (self) 
local nTable = {}
nTable[self.seal] = "085c492f381c4f45bb29c7a4a0c63a88" -- 스킬봉인
nTable[self.darkness] = "0547c30fd21342df8ccb28ff543c09cb" -- 암흑
nTable[self.weakness] = "0545fa628138440dbc27023ba045911a" -- 허약
nTable[self.curse] = "f0ef3fc333c84ca4bf41a69039133e04" -- "182001a35e4d4cddabb9ee5968da1198" -- 저주
nTable[self.stun] = "04e824d9ab724faf9f756e195514f82f" -- 스턴
nTable[self.poison] = "0bf3167153bc40c9be8fb3f7d5912b84" -- 독
nTable[self.slow] = "14ea34cd8f6d4db8a8c51f98797a2b4b" -- 슬로우
nTable[self.seduce] = "025ace4d41a7461caf9e461bd8a48130" -- 유혹
nTable[self.reverse] = "0878cf0ca11d4d5a9eb745949c37d1df" -- 혼란
nTable[self.undead] = "0e494cd95c3545179aa958f7c74db82a" -- 좀비피
self.effectTable = nTable

local effTable = {}
effTable["seal"] = self.seal
effTable["darkness"] = self.darkness
effTable["weakness"] = self.weakness
effTable["curse"] = self.curse
effTable["stun"] = self.stun
effTable["poison"] = self.poison
effTable["slow"] = self.slow
effTable["seduce"] = self.seduce
effTable["reverse"] = self.reverse
effTable["undead"] = self.undead
self.effStringTable = effTable

if self:IsServer() then	
	-------------------------------------------------------
	local sumEff = {}
	sumEff[1] = {"14850c1b9eb941e9879cc9085b4e3bdc", 0}
	sumEff[5] = {"571d9907d1aa42569e7aa4065a18b757", 660}
	self.summonEffect = sumEff
	-------------------------------------------------------
	local sumSound = {}
	sumSound[0] = "0d5ab6e4c24c42f7831d72604d679f2d"
	sumSound[2] = "fffc0d41e8394b31b479687cc8456ac3"
	sumSound[5] = "dcee669eeb024a1686f0672ceac0b8ef"
	sumSound[13] = "e7e8fb1eafcc4fac9a6f7bf8240a69e3"
	sumSound[14] = "fca57c6d1dd4497485d5e4158d0b59af"
	self.summonSound = sumSound
end

-- 버프형
-- 114 호브 체력회복? 04e79fc1c8b148d391ef70e20092536d
--nTable[110] = "07eaccde495645b3a29f422b2d1950e2"
--120 / 1719c06aa86e485ca7ec3546c69c52ba
end