return function (self) 
self.main:SetEnable(false)
self.hpPer = self.main:GetChildByName("Per").TextComponent
self.bossRUID = self.main:GetChildByName("Boss").SpriteGUIRendererComponent
self.tColor = self.main:GetChildByName("tColor").SpriteGUIRendererComponent
self.bColor = self.main:GetChildByName("bColor").SpriteGUIRendererComponent
self.colorRUID = {
	"5df6961cb6ab494a9c5d4833f93fa357", "a1cf5e692f03427c92ed92715920c7a3", "b6910f0f2ae94462ada327a7511347ab", "da2b9f402a73406e9908697caf942cc5",
	"e12afbb7fda7439683eccef6bc36d83f", "6bd8306ef652425e886c735a5fcb7511", "e2fe58a03c034bc587473b8f75ad7bcc"
}

local findTable = _DataService:GetTable("BossHp")
local rowCount = findTable:GetRowCount()
local nTable = {}
for idx = 1, rowCount do
	nTable[tonumber(findTable:GetCell(idx, 1))] = findTable:GetCell(idx, 2)
end
self.ruid = nTable
end