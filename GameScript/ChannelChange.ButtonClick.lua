return function (self,worldInstanceId,count,maxCount) 
local player = _UserService.LocalPlayer
if worldInstanceId == _WorldInstanceService.WorldInstanceId then
	_MessageLogic:DropMessage("동일한 채널입니다.")
	return
end
if count >= maxCount - 5 then
    _MessageLogic:DropMessage("인원이 너무 많은 채널입니다.")
    return
end
--if count == maxCount then
--    _MessageLogic:DropMessage("인원이 가득찬 채널입니다.")
--    return
--end
self:ChangeChannel(player, worldInstanceId)
end