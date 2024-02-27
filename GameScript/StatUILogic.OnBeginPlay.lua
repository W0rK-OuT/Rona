return function (self) 
self.clone = self.pc:Clone(self.entityName)
self.distribution = self.clone:GetChildByName("Distribution")
self.mobileDistribution = self.clone:GetChildByName("MobileDistribution")
self.detailInfo = self.clone:GetChildByName("DetailMask"):GetChildByName("Info")
self.pc:SetEnable(false)
self:CloseUI()

local mid = self.clone:GetChildByName("Mid")
self.name = mid:GetChildByName("Name").TextComponent
self.gender = mid:GetChildByName("Gender").TextComponent
self.job = mid:GetChildByName("Job").TextComponent
self.level = mid:GetChildByName("Level").TextComponent
self.guild = mid:GetChildByName("Guild").TextComponent
self.hp = mid:GetChildByName("Hp").TextComponent
self.mp = mid:GetChildByName("Mp").TextComponent
self.exp = mid:GetChildByName("Exp").TextComponent
self.pop = mid:GetChildByName("Fame").TextComponent

self.ap = self.clone:GetChildByName("APValue").TextComponent

local bottom = self.clone:GetChildByName("Bottom")
self.str = bottom:GetChildByName("StrValue").TextComponent
self.dex = bottom:GetChildByName("DexValue").TextComponent
self.int = bottom:GetChildByName("IntValue").TextComponent
self.luk = bottom:GetChildByName("LukValue").TextComponent
self.block = bottom:GetChildByName("Block")

local detail = self.clone:GetChildByName("DetailMask"):GetChildByName("Info")
self.statPAD = detail:GetChildByName("StatPAD").TextComponent
self.statMAD = detail:GetChildByName("StatMAD").TextComponent
self.pad = detail:GetChildByName("PAD").TextComponent
self.mad = detail:GetChildByName("MAD").TextComponent
self.pdd = detail:GetChildByName("PDD").TextComponent
self.mdd = detail:GetChildByName("MDD").TextComponent
self.acc = detail:GetChildByName("ACC").TextComponent
self.eva = detail:GetChildByName("EVA").TextComponent
self.speed = detail:GetChildByName("SPEED").TextComponent
self.jump = detail:GetChildByName("JUMP").TextComponent

self.name.Text = _UserService.LocalPlayer.PlayerComponent.Nickname
self.stats = _UserService.LocalPlayer.PlayerStats
self.buff = _UserService.LocalPlayer.PlayerBuff
self.skill = _UserService.LocalPlayer.PlayerSkill
end