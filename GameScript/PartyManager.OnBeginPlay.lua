return function (self) 
self.main:SetEnable(false)
self.main = self.main:Clone(self.entityName)
self.main:SetEnable(false)
_UIManager:Remove(self.main)

self.grid = self.main:GetChildByName("Grid")
local sample = self.grid:GetChildByName("Sample")
for idx = 1, 6 do
	local clone = sample:Clone(tostring(idx))
	clone:GetChildByName("Select"):SetEnable(false)
	clone:SetEnable(false)
end
sample:Destroy()

self.inviteBox = _TextBoxManager.main:Clone(self.inviteBoxName)
self.inviteBox:SetEnable(false)
self.inviteBox:GetChildByName("Text").TextComponent.Text = "파티에 초대할 캐릭터 이름을\n입력하세요"
_UIManager:Remove(self.inviteBox)

self.acceptBox = _YesNoBoxManager.main:Clone(self.acceptBoxName)
self.acceptBox:SetEnable(false)
self.acceptBox:GetChildByName("Text").TextComponent.Text = ""
_UIManager:Remove(self.acceptBox)
end