return function (self) 
self.grid = self.main:GetChildByName("Grid")
self.sample = self.grid:GetChildByName("Sample")
self.sample:SetEnable(false)
self.chatInfo = self.main:GetChildByName("Chat")
self.chatInput = self.chatInfo:GetChildByName("Input").TextInputComponent

_MessageLogic:ChatMessage(4, "채팅창에 '/명령어' 입력시, 명령어를 확인할 수 있습니다.")
end