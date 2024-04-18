return function (self,id,level) 
local skillTable = {}
local type = math.floor(id / 10000)
if type == 500 then
	if id == 5000000 then -- 퀵 모션
		skillTable["acc"] = level
		skillTable["eva"] = level
	elseif id == 5001001 then -- 스트레이트
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 5 * level
		skillTable["damage"] = 150 + level * 6
		skillTable["mpCon"] = 6 + math.floor(level * 8 / 20)
		skillTable["skillRange"] = Vector2(0.54, 0.4)
		skillTable["skillPos"] = Vector2(-0.47, 0.1)
	elseif id == 5001002 then -- 써머솔트킥
		skillTable["jumpAttack"] = 1
		skillTable["mobCount"] = 3 + math.floor((level - 1) / 5)
		skillTable["mpCon"] = 8 + math.floor(level * 8 / 20)
		skillTable["damage"] = 110 + level * 4
		skillTable["skillRange"] = Vector2(0.76, 0.71)
		skillTable["skillPos"] = Vector2(-0.43, 0.355)
	elseif id == 5001003 then -- 더블 파이어
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 4 + math.floor(3 * level / 20)
		skillTable["damage"] = 80 + (level <= 10 and level or 10 + (level - 10) * 2)
		skillTable["throwConsume"] = 2
		skillTable["attackCount"] = 2
		skillTable["skillRangeX"] = 230 + 15 * math.floor(level / 2)
		skillTable["baseRange"] = 3
		skillTable["weapon"] = {149}
		skillTable["yRange"] = 75
	elseif id == 5001005 then -- 대쉬
		skillTable["incDashSpeed"] = 10 + level * 2
		skillTable["incDashJump"] = level
		skillTable["time"] = 4 * math.floor((level + 1) / 2)
		skillTable["mpCon"] = 15 - level
		skillTable["buff"] = 1
		skillTable["noRope"] = 1
	end
elseif type == 510 then
	if id == 5100000 then -- HP 증가량 향상
		skillTable["levelHp"] = level * 3
	elseif id == 5100001 then -- 너클 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["knuckle_mastery"] = math.ceil(level / 2)
		skillTable["knuckle_acc"] = level
	elseif id == 5101002 then -- 백스핀 블로우
		skillTable["damage"] = 80 + level * 8
		skillTable["mobCount"] = 3
		skillTable["mpCon"] = 10 + level * 2
		skillTable["skillRange"] = Vector2(1.4, 0.5)
		skillTable["skillPos"] = Vector2(1.4 / 2, 0.5 / 2)
		skillTable["weapon"] = {0, 148}
		skillTable["hitCoolTime"] = 1.95
		skillTable["hitMove"] = -130
		skillTable["rush"] = -90
		skillTable["hitInvincibility"] = 0.6
		skillTable["moveSkill"] = 1
		
		skillTable["debTime"] = 1
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	elseif id == 5101003 then -- 더블 어퍼
		skillTable["jumpAttack"] = 1
		skillTable["damage"] = 90 + level * 10
		skillTable["attackCount"] = 2
		skillTable["mpCon"] = 10 + math.ceil(level / 5) * 5
		skillTable["skillRange"] = Vector2(0.68, 0.68)
		skillTable["skillPos"] = Vector2(-0.36, 0.24)
		skillTable["weapon"] = {0, 148}
		
		skillTable["debTime"] = 1
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	elseif id == 5101004 then -- 스크류 펀치
		skillTable["jumpAttack"] = 1
		skillTable["damage"] = 120 + level * 15
		skillTable["mobCount"] = 3
		skillTable["mpCon"] = 20 + math.floor((level - 1) / 4) * 4
		skillTable["skillRange"] = Vector2(1 + 0.05 * level, 0.5)
		skillTable["skillPos"] = Vector2(-(1 + 0.05 * level) / 2, 0.25)
		skillTable["weapon"] = {0, 148}
		skillTable["charge"] = 2
		skillTable["hitCoolTime"] = 1.5
		skillTable["hitMove"] = 130
		skillTable["rush"] = 120
		skillTable["hitInvincibility"] = 0.3
		skillTable["moveSkill"] = 1
	elseif id == 5101005 then -- MP 리커버리
		skillTable["hpToMp"] = 50 + level * 5
		skillTable["cooltime"] = math.max(25, 75 - 5 * level)
		skillTable["mpCon"] = 0
		skillTable["buff"] = 1
	elseif id == 5101006 then -- 너클 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {0, 148}
	elseif id == 5101007 then -- 오크통
        --skillTable["cooltime"] = math.max(15, 40 - 5 * math.ceil(level / 2))
        --skillTable["rand"] = 40 - 3 * level
        --skillTable["mpCon"] = 10 + level
        --skillTable["time"] = 10 + 2 * level
        --skillTable["buff"] = 1
	end
elseif type == 520 then
	if id == 5200000 then -- 건 마스터리
		skillTable["calMastery"] = 10 + math.ceil(level / 2) * 5
		skillTable["gun_mastery"] = math.ceil(level / 2)
		skillTable["gun_acc"] = level
		skillTable["recharge"] = level * 10
	elseif id == 5201001 then -- 인비지블샷
		skillTable["jumpAttack"] = 1
		skillTable["throwConsume"] = 1
		skillTable["damage"] = 70 + level * 5
		skillTable["mpCon"] = 5 + math.ceil(level / 5) * 5
		skillTable["mobCount"] = 3
		skillTable["weapon"] = {149}
		skillTable["setRange"] = 1
		skillTable["skillRange"] = Vector2(2.4, 1.2)
		skillTable["skillPos"] = Vector2(-1.3, 0.2)
	elseif id == 5201002 then -- 스로잉 봄
		--
	elseif id == 5201003 then -- 건 부스터
		skillTable["incAttackSpeed"] = -2
		skillTable["hpCon"] = math.max(1, 30 - level)
		skillTable["mpCon"] = math.max(1, 30 - level)
		skillTable["time"] = level * 10
		skillTable["buff"] = 1
		skillTable["weapon"] = {149}
	elseif id == 5201004 then -- 페이크 샷
		skillTable["jumpAttack"] = 1
		skillTable["damage"] = 60 + level * 3
		skillTable["mpCon"] = 5 + math.ceil(level / 5) * 5
		skillTable["mobCount"] = 3
		skillTable["setRange"] = 1
		skillTable["weapon"] = {149}
		skillTable["skillRange"] = Vector2(2.3, 1.1)
		skillTable["skillPos"] = Vector2(-1.35, 0.25)
		
		skillTable["debRand"] = 40 + level * 3
		skillTable["debTime"] = math.ceil(level / 5)
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	elseif id == 5201005 then -- 윙즈
		skillTable["mpCon"] = math.max(14, 54 - level * 4)
		skillTable["wings"] = math.max(100, 300 - 20 * level)
		skillTable["time"] = 5
		skillTable["move"] = 1
	elseif id == 5201006 then -- 백스텝샷
		skillTable["jumpAttack"] = 1
		skillTable["throwConsume"] = 1
		skillTable["damage"] = 60 + level * 10
		skillTable["mpCon"] = 10 + 4 * math.ceil(level / 5)
		skillTable["yRange"] = 100
		skillTable["baseRange"] = 3
		local cal = 100 + 15 * math.ceil(level / 2)
		skillTable["skillRangeX"] = cal
		skillTable["addForce"] = Vector2((200 + cal) / 100, (100 + cal) / 100)
		skillTable["moveSkill"] = 1
		skillTable["delayTime"] = 1320
		skillTable["setRange"] = 1
		skillTable["weapon"] = {149}
	end
elseif type == 511 then
	if id == 5110000 then -- 스턴 마스터리
		skillTable["stunRand"] = 20 + level * 2
		skillTable["stunDamage"] = 100 + level * 3 
	elseif id == 5110001 then -- 에너지 차지
		skillTable["energy_pad"] = 10 + math.floor(level / 4)
		skillTable["energy_acc"] = math.ceil(level / 2)
		skillTable["energy_eva"] = math.ceil(level / 2)
		skillTable["energy_time"] = 30 + math.ceil(level / 2)
		skillTable["energy_x"] = 72 + 3 * level
		skillTable["energy_prop"] = 50 + level
		skillTable["energy_damage"] = 5 * level
	elseif id == 5111002 then -- 에너지 버스터
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 0
		skillTable["damage"] = 240 + level * 6
		skillTable["mobCount"] = 1 + math.ceil(level / 10)
		skillTable["skillRange"] = Vector2(1.15, 1.1)
		skillTable["skillPos"] = Vector2(-0.525, 0.25)
		skillTable["weapon"] = {0, 148}
		skillTable["canEnergy"] = 1
		
		skillTable["debRand"] = 10 + level
		skillTable["debTime"] = 5 + math.ceil(level / 10)
		skillTable["debBuffs"] = {
			{
				["key"] = "stun",
				["value"] = 1,
			},
		}
	elseif id == 5111004 then -- 에너지 드레인
		skillTable["jumpAttack"] = 1
		skillTable["noHitCancel"] = 1
		skillTable["mpCon"] = 0
		skillTable["damage"] = 260 + level * 5
		skillTable["drainHPR"] = 10 + math.ceil(level / 2)
		skillTable["skillRange"] = Vector2(2, 1)
		skillTable["skillPos"] = Vector2(-1, 0.5)
		skillTable["canEnergy"] = 1
	elseif id == 5111005 then -- 트랜스폼
		skillTable["cooltime"] = math.max(360, 560 - level * 10)
		skillTable["mpCon"] = 20 + 2 * level
		skillTable["incSpeed"] = 40
		skillTable["incJump"] = 20
		skillTable["incPDD"] = 2 * level
		skillTable["incMDD"] = 2 * level
		skillTable["incMorph"] = 1000
		skillTable["time"] = 120
		skillTable["buff"] = 1
	elseif id == 5111006 then -- 쇼크웨이브
		skillTable["mpCon"] = 12 + 6 * math.ceil(level / 5)
		skillTable["damage"] = 250 + level * 15
		skillTable["mobCount"] = 3 + math.ceil(level / 10)
		skillTable["skillRange"] = Vector2(3.3, 1.6)
		skillTable["skillPos"] = Vector2(-1.65, 0.6)
		skillTable["canMorph"] = {1000, 1001}
		skillTable["weapon"] = {0, 148}
	end
elseif type == 521 then
	if id == 5210000 then -- 트리플 파이어
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 12 + math.ceil(level / 2)
		skillTable["damage"] = 110 + level * 5
		skillTable["throwConsume"] = 3
		skillTable["attackCount"] = 3
		skillTable["skillRangeX"] = 350
		skillTable["baseRange"] = 3
		skillTable["weapon"] = {149}
		skillTable["yRange"] = 75
	elseif id == 5211001 then -- 옥토퍼스
		skillTable["cooltime"] = 10
		skillTable["mpCon"] = 10 + math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["noJump"] = 1
		skillTable["noRope"] = 1
		skillTable["linkSkill"] = 5220002
		
		skillTable["summonTime"] = 10 * math.ceil(level / 10)
		skillTable["summonDamage"] = 80 + level * 4
		skillTable["summon"] = {
			["type"] = 4,
			["multi"] = 1,
			["mainStat"] = "dex",
			["secondStat"] = "str",
		}
	elseif id == 5211002 then -- 가비오타
		skillTable["cooltime"] = 5
		skillTable["mpCon"] = 10 + math.ceil(level / 3)
		skillTable["buff"] = 1
		skillTable["noJump"] = 1
		skillTable["noRope"] = 1
		
		skillTable["summonTime"] = 10 * math.ceil(level / 10)
		skillTable["summonDamage"] = 210 + level * 8
		skillTable["summon"] = {
			["type"] = 3,
			["multi"] = 1,
			["attackEnd"] = 1,
			["attackCount"] = 3,
			["mainStat"] = "dex",
			["secondStat"] = "str",
		}
	elseif id == 5211004 then -- 파이어 버너
		skillTable["jumpAttack"] = 1
		skillTable["damage"] = 100 + level * 3
		skillTable["mpCon"] = 20 + math.ceil(level / 10) * 5
		skillTable["throwConsume"] = 1
		skillTable["canConsume"] = 2331000
		skillTable["mobCount"] = math.min(6, 1 + math.ceil(level / 6))
		skillTable["elemAttr"] = "F"
		skillTable["weapon"] = {149}
		skillTable["delayTime"] = 1050
		skillTable["setRange"] = 1
		skillTable["skillRange"] = Vector2(3.8, 1)
		skillTable["skillPos"] = Vector2(-1.9, 0.5)
		
		skillTable["debTime"] = 2 + math.ceil(level / 10)
		skillTable["debBuffs"] = {
			{
				["key"] = "fire",
				["value"] = 1,
			},
		}
	elseif id == 5211005 then -- 쿨링 이펙트
		skillTable["jumpAttack"] = 1
		skillTable["damage"] = 100 + level * 2
		skillTable["mpCon"] = 20 + math.ceil(level / 10) * 5
		skillTable["throwConsume"] = 1
		skillTable["canConsume"] = 2332000
		skillTable["elemAttr"] = "I"
		skillTable["mobCount"] = math.min(6, 1 + math.ceil(level / 6))
		skillTable["weapon"] = {149}
		skillTable["delayTime"] = 1050
		skillTable["setRange"] = 1
		skillTable["skillRange"] = Vector2(3.8, 1)
		skillTable["skillPos"] = Vector2(-1.9, 0.5)
		
		skillTable["debTime"] = math.ceil(level / 10)
		skillTable["debBuffs"] = {
			{
				["key"] = "freeze",
				["value"] = 1,
			},
		}
	elseif id == 5211006 then -- 호밍
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 15 + 5 * math.ceil(level / 10)
		skillTable["damage"] = 140 + 8 * level
		skillTable["setRange"] = 1
		skillTable["yRange"] = 75
		skillTable["homing"] = 1
		skillTable["linkSkill"] = 5220011
		skillTable["skillRange"] = Vector2(3.5, 0.4)
		skillTable["skillPos"] = Vector2(-1.75, 0.2)
		skillTable["weapon"] = {149}
	end
elseif type == 512 then
	if id == 5121000 then -- 메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 5121001 then -- 드래곤 스트라이크
		skillTable["mpCon"] = 20 + math.ceil(level / 2)
		skillTable["mobCount"] = 3 + math.ceil(level / 10)
		skillTable["damage"] = 210 + 15 * level + 50 * math.ceil(level / 10)
		skillTable["hitCoolTime"] = 1.59
		skillTable["skillRange"] = Vector2(4.25, 1.2)
		skillTable["skillPos"] = Vector2(-1.875, 0.4)
		skillTable["weapon"] = {0, 148}
	elseif id == 5121002 then -- 에너지 오브
		skillTable["jumpAttack"] = 1
		skillTable["mpCon"] = 0
		skillTable["damage"] = 270 + level * 20 + 10 * math.ceil(level / 10)
		skillTable["mobCount"] = 1 + math.ceil(level / 6)
		skillTable["skillRange"] = Vector2(2, 0.4)
		skillTable["skillPos"] = Vector2(-1, 0.2)
		skillTable["penetrate"] = 70
		skillTable["chain"] = 2
		skillTable["yRange"] = 75
		skillTable["canEnergy"] = 1
		skillTable["weapon"] = {0, 148}
	elseif id == 5121003 then -- 슈퍼트랜스폼
		skillTable["cooltime"] = math.max(240, 440 - level * 10)
		skillTable["mpCon"] = 20 + 2 * level
		skillTable["incSpeed"] = 40
		skillTable["incJump"] = 20
		skillTable["incPDD"] = 40 + level
		skillTable["incMDD"] = 40 + level
		skillTable["incMorph"] = 1001
		skillTable["time"] = 120
		skillTable["buff"] = 1
	elseif id == 5121007 then -- 피스트
		skillTable["mpCon"] = 20 + math.ceil(level / 2)
		skillTable["damage"] = 80 + 4 * level + 10 * math.ceil(level / 10)
		skillTable["noHitCancel"] = 1
		skillTable["attackCount"] = 6
		skillTable["hitCoolTime"] = 2.85
		skillTable["hitInvincibility"] = 2
		skillTable["skillRange"] = Vector2(1.2, 0.7)
		skillTable["skillPos"] = Vector2(-0.6, 0.25)
		skillTable["weapon"] = {0, 148}
	elseif id == 5121004 then -- 데몰리션
		skillTable["mpCon"] = 5 + 15 * math.ceil(level / 10)
		skillTable["damage"] = 70 + level * 10 + 10 * math.ceil(level / 10)
		skillTable["noHitCancel"] = 1
		skillTable["attackCount"] = 8
		skillTable["hitInvincibility"] = 1.5
		skillTable["skillRange"] = Vector2(2.85, 1.65)
		skillTable["skillPos"] = Vector2(-1.6, 0.675)
		skillTable["canMorph"] = {1001}
		skillTable["weapon"] = {0, 148}
	elseif id == 5121005 then -- 스내치
		skillTable["mpCon"] = 10 + level
		skillTable["damage"] = 150 + level * 10 + 50 * math.ceil(level / 10)
		skillTable["mobCount"] = 1 + math.ceil(level / 6)
		skillTable["skillRange"] = Vector2(2.5, 1.15)
		skillTable["skillPos"] = Vector2(-1.75, 0.425)
		skillTable["canMorph"] = {1001}
		skillTable["weapon"] = {0, 148}
	elseif id == 5121009 then -- 윈드 부스터
		skillTable["hpCon"] = 80 - level * 2
		skillTable["mpCon"] = 80 - level * 2
		skillTable["incInfusion"] = level <= 10 and -1 or -2
		skillTable["time"] = 100 + 10 * level
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(5, 3)
	elseif id == 5121010 then -- 타임 리프
		skillTable["mpCon"] = 200 - level * 5
		skillTable["cooltime"] = math.max(20, 50 - level) * 60
		skillTable["timeleap"] = math.max(20, 50 - level)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 5121008 then -- 용사의 의지
		skillTable["calTime"] = math.max(1, 11 - level)
		skillTable["mpCon"] = 30
		skillTable["herowill"] = 1
		skillTable["cooltime"] = math.max(60, 660 - 60 * level)
		skillTable["buff"] = 1
	end
elseif type == 522 then
	if id == 5221000 then -- 메이플 용사
		skillTable["mpCon"] = 10 * math.ceil(level / 5)
		skillTable["time"] = level * 30
		skillTable["incMapleWarrior"] = math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["partyBuff"] = Vector2(8, 6)
	elseif id == 5220001 then -- 속성강화
		skillTable["attstr_damage"] = level * 6 + (math.ceil(level / 10) - 1) * 10
		skillTable["attstr_dot"] = math.ceil(level / 6) * 2
		skillTable["attstr_time"] = math.ceil(level / 15) * 2
	elseif id == 5220002 then -- 서포트 옥토퍼스
		skillTable["noActive"] = 1
		skillTable["cooltime"] = 10
		skillTable["mpCon"] = 25 + math.ceil(level / 2)
		skillTable["buff"] = 1
		skillTable["noJump"] = 1
		skillTable["noRope"] = 1
		
		skillTable["summonTime"] = 30 + 5 * math.ceil(level / 10)
		skillTable["summonDamage"] = level <= 10 and 200 + level * 10 or 100 + level * 20
		skillTable["summon"] = {
			["type"] = 4,
			["multi"] = 1,
			["mainStat"] = "dex",
			["secondStat"] = "str",
		}
	elseif id == 5221003 then -- 에어 스트라이크
		skillTable["mpCon"] = 30 + level
		skillTable["damage"] = 450 + 20 * level + 50 * math.ceil(level / 10)
		skillTable["cooltime"] = 5
		skillTable["mobCount"] = 6
		skillTable["setRange"] = 1
		skillTable["skillRange"] = Vector2(8, 6)
		skillTable["skillPos"] = Vector2(0, 2)
	elseif id == 5221004 then -- 래피드 파이어
		skillTable["mpCon"] = level <= 25 and 4 + 2 * math.ceil(level / 10) or 9
		skillTable["damage"] = level <= 20 and 130 + 2 * level or 140 + 2 * level
		skillTable["rapid"] = 1
		skillTable["setRange"] = 1
		skillTable["yRange"] = 75
		skillTable["throwConsume"] = 1
		skillTable["skillRange"] = Vector2(3.8, 0.4)
		skillTable["skillPos"] = Vector2(-1.9, 0.2)
		skillTable["weapon"] = {149}
	elseif id == 5221006 then -- 배틀쉽
		skillTable["mpCon"] = 20 + level * 2
		skillTable["time"] = -1
		skillTable["incTaming"] = 1932000
		skillTable["incPDD"] = 10 * level
		skillTable["incMDD"] = 10 * level
		skillTable["noRope"] = 1
		skillTable["buff"] = 1
	elseif id == 5221007 then -- 배틀쉽 캐논
		skillTable["mpCon"] = 20 + 2 * math.ceil(level / 3)
		skillTable["damage"] = 190 + 5 * level + 10 * (math.ceil(level / 10) + math.ceil(level / 20))
		skillTable["throwConsume"] = level <= 10 and 3 or 4
		skillTable["attackCount"] = level <= 10 and 3 or 4
		skillTable["setRange"] = 1
		skillTable["yRange"] = 75
		skillTable["canTaming"] = 1932000
		skillTable["skillRange"] = Vector2(4, 0.4)
		skillTable["skillPos"] = Vector2(-2, 0.2)
		skillTable["weapon"] = {149}
	elseif id == 5221008 then -- 배틀쉽 토르페도
		skillTable["mpCon"] = 20 + 2 * math.ceil(level / 3)
		skillTable["damage"] = 330 + 10 * level + 50 * math.ceil(level / 10)
		skillTable["mobCount"] = 6
		skillTable["throwConsume"] = 1
		skillTable["setRange"] = 1
		skillTable["canTaming"] = 1932000
		skillTable["skillRange"] = Vector2(3.9, 1)
		skillTable["skillPos"] = Vector2(-2.05, 0.3)
		skillTable["weapon"] = {149}
	elseif id == 5220011 then -- 어드밴스드 호밍
		skillTable["jumpAttack"] = 1
		skillTable["noActive"] = 1
		skillTable["mpCon"] = 30 + 5 * math.ceil(level / 10)
		skillTable["damage"] = 380 + 10 * level
		skillTable["setRange"] = 1
		skillTable["yRange"] = 75
		skillTable["homing"] = 1
		skillTable["homingDamage"] = level
		skillTable["skillRange"] = Vector2(3.5, 0.4)
		skillTable["skillPos"] = Vector2(-1.75, 0.2)
		skillTable["weapon"] = {149}
	elseif id == 5221010 then -- 용사의 의지
		skillTable["calTime"] = math.max(1, 11 - level)
		skillTable["mpCon"] = 30
		skillTable["herowill"] = 1
		skillTable["cooltime"] = math.max(60, 660 - 60 * level)
		skillTable["buff"] = 1
	end
end
return skillTable
end