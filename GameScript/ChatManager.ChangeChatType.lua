return function (self,type) 
if type == nil then
	return
end

local tex = "모두에게"
if type == 1 then
	tex = "맵"
elseif type == 2 then
	tex = "파티에게"
end

self.main:GetChildByName("Chat"):GetChildByName("Text"):GetChildByName("UIText").TextComponent.Text = tex
self.chatType = type
end