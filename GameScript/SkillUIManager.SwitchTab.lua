return function (self,tab) 
local ori = self.lastTab
if ori == tab then
	return
end
self.lastTab = tab
local job = _UserService.LocalPlayer.PlayerStats.job

for key, value in pairs(self.tabs.Children) do
	if value.Name == "Tab" .. tab then
		value.SpriteGUIRendererComponent.ImageRUID = "39d7ad8a97ee426f946dcf136aa4ec2c"
	else
		value.SpriteGUIRendererComponent.ImageRUID = "5dd6518bb00f4b88b013175a12280814"
	end
end

if job < 0 then
	return
end

local ruid
if tab == 1 then
	ruid = "87ab2bff25e4436d8ad753439c6cac15"
elseif tab == 2 then
	ruid = "682180adc0814ef5a2c246f6dee6d1f3"
elseif tab == 3 then
	ruid = "690ee9924182434c828ea969e214665c"
elseif tab == 4 then
	ruid = "43431121c2a2492c8836b41f848bf958"
else
	ruid = "b30eaeaa89ae49aa9bbdc577b89b7aca"
end
self.book.ImageRUID = ruid

local calJob 
if tab == 0 then
	calJob = math.floor(job / 1000) * 1000
elseif tab == 1 then
	calJob = _GameUtil:JobType(job) * 100
elseif tab >= 2 then
	calJob = _GameUtil:JobType(job) * 100 + math.floor(job % 100 / 10) * 10 + tab - 2
else
	calJob = -1
end
self.jobDesc.Text = self:JobDesc(calJob)

self:UpdateSkills(job)
self:UpdateSP()
end