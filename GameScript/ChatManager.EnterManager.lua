return function (self) 
if not self.isChat then
	self.isChat = true
	self.chatInput:ActivateInputField()
end
end