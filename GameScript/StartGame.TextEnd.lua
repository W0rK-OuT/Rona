return function (self,str) 
if self.removeIndex < 0 then
	return
end

if str == (self.removeIndex + 1) .. "번 캐릭터 삭제" then
	self:RemoveServer(_UserService.LocalPlayer, self.removeIndex)
	_StartGame:CloseRemove()
else
	self.removeInfo:GetChildByName("UIText").TextComponent.Text = "문구가 틀렸습니다.\n'" .. (self.removeIndex + 1) .. "번 캐릭터 삭제'를 입력하세요."
end
end