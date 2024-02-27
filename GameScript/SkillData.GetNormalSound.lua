return function (self,sfx) 
local sound
if sfx == "bow" then
	sound = _MaplePreferencesLogic.WeaponBowSound
elseif sfx == "cBow" then
	sound = _MaplePreferencesLogic.WeaponCrossBowSound
elseif sfx == "gun" then
	sound = _MaplePreferencesLogic.WeaponGunSound
elseif sfx == "knuckle" then
	sound = _MaplePreferencesLogic.WeaponKnuckleSound
elseif sfx == "mace" then
	sound = _MaplePreferencesLogic.WeaponMaceSound
elseif sfx == "poleArm" then
	sound = _MaplePreferencesLogic.WeaponPoleArmSound
elseif sfx == "spear" then
	sound = _MaplePreferencesLogic.WeaponSpearSound
elseif sfx == "swordB" then
	sound = _MaplePreferencesLogic.WeaponSwordBSound
elseif sfx == "swordL" then
	sound = _MaplePreferencesLogic.WeaponSwordLSound
elseif sfx == "swordS" then
	sound = _MaplePreferencesLogic.WeaponSwordSSound
elseif sfx == "tGlove" then
	sound = _MaplePreferencesLogic.WeaponTGloveSound
else
	_MessageLogic:ShowMessage("착용 중인 무기의 " ..sfx .. " 타입의 사운드가 없습니다.")
end
if _UtilLogic:IsNilorEmptyString(sound) then
	return
end
_SoundService:PlaySound(sound, 1)
end