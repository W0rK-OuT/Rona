return function (self,delta) 
if self.timer <= 0 then
	return
end
self.timer -= delta

if self.timer >= 3600 then
	local hours = math.floor(self.timer / 3600) -- 시간 계산
	local minutes = math.floor(self.timer % 3600 / 60) -- 분 계산
	local str = hours .. "/" .. minutes
	
	if str == self.lastStr then
		return
	end
	self.lastStr = str
	
	local left1 = hours % 100 // 10
	local left2 = hours % 10
	_ClockManager.left1.ImageRUID = _ClockManager.numberTable[left1 + 1]
	if left1 == 0 then
		_ClockManager.left1.Enable = false
	else
		_ClockManager.left1.Enable = true
	end
	_ClockManager.left2.ImageRUID = _ClockManager.numberTable[left2 + 1]
	
	local right1 = minutes % 100 // 10
	local right2 = minutes % 10
	_ClockManager.right1.ImageRUID = _ClockManager.numberTable[right1 + 1]
	_ClockManager.right2.ImageRUID = _ClockManager.numberTable[right2 + 1]
	
	if not self.isHour then
		self.isHour = true
		self.Entity.SpriteGUIRendererComponent.ImageRUID = "a777b1af41234baf8422364406bc3464"
	end
else
	local nTime = math.max(self.timer, 0)
    local minutes = math.floor(nTime / 60) -- 분 계산
    local seconds = math.floor(nTime % 60) -- 초 계산
	local str = minutes .. "/" .. seconds
	
	if str == self.lastStr then
		return
	end
	self.lastStr = str
	
	local left1 = minutes % 100 // 10
	local left2 = minutes % 10
	_ClockManager.left1.ImageRUID = _ClockManager.numberTable[left1 + 1]
	if left1 == 0 then
		_ClockManager.left1.Enable = false
	else
		_ClockManager.left1.Enable = true
	end
	
	_ClockManager.left2.ImageRUID = _ClockManager.numberTable[left2 + 1]
	
	local right1 = seconds % 100 // 10
	local right2 = seconds % 10
	_ClockManager.right1.ImageRUID = _ClockManager.numberTable[right1 + 1]
	_ClockManager.right2.ImageRUID = _ClockManager.numberTable[right2 + 1]
	
	if self.isHour then
		self.isHour = false
		self.Entity.SpriteGUIRendererComponent.ImageRUID = "10715bf47e324653ad14519dcee4b5d2"
	end
end
end