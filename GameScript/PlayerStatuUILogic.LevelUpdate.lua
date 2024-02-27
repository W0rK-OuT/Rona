return function (self,level) 
if level < 10 then
	self.lvBox:GetChildByName("Level3th"):SetVisible(false)
	self.lvBox:GetChildByName("Level2th"):SetVisible(false)
	local box = self.lvBox:GetChildByName("Level1th")
	box:GetChildByName("UISprite"):GetChildByName("Text").TextComponent.Text = "<b>" .. level .. "</b>"
	box:SetVisible(true)
elseif level < 100 then
	self.lvBox:GetChildByName("Level3th"):SetVisible(false)
	self.lvBox:GetChildByName("Level1th"):SetVisible(false)
	local box = self.lvBox:GetChildByName("Level2th")
	box:GetChildByName("UISprite"):GetChildByName("Text").TextComponent.Text = "<b>" .. math.floor(level / 10) .. "</b>"
	box:GetChildByName("UISprite2"):GetChildByName("Text").TextComponent.Text = "<b>" .. level % 10 .. "</b>"
	box:SetVisible(true)
else
	self.lvBox:GetChildByName("Level2th"):SetVisible(false)
	self.lvBox:GetChildByName("Level1th"):SetVisible(false)
	local box = self.lvBox:GetChildByName("Level3th")
	box:GetChildByName("UISprite"):GetChildByName("Text").TextComponent.Text = "<b>" .. math.floor(level / 100) .. "</b>"
	box:GetChildByName("UISprite2"):GetChildByName("Text").TextComponent.Text = "<b>" .. math.floor(level % 100 / 10) .. "</b>"
	box:GetChildByName("UISprite3"):GetChildByName("Text").TextComponent.Text = "<b>" .. level % 10 .. "</b>"
	box:SetVisible(true)
end
end