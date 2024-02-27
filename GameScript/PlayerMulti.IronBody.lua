return function (self,isLeft,stateName) 
local player = self.Entity
if not isvalid(player) then
	return
end

local ironBody = player:GetChildByName("ironBody")
if ironBody == nil then
	ironBody = _SpawnService:SpawnByModelId("model://2ec72230-649b-42bc-97ba-0fc1eab89518", "ironBody", Vector3.zero, player)

	local costume = ironBody.CostumeManagerComponent
	costume.DefaultEquipUserId = player.Name
	
	--local mycostume = player.CostumeManagerComponent
	--local curEq = mycostume.EquippedItems
	--for _, eq in pairs(curEq) do
	--    costume:SetEquip(eq.Category, eq.ItemId)
	--end
end

local ar = ironBody.AvatarRendererComponent
local trans = ironBody.TransformComponent
trans.Scale.x = isLeft and 1 or -1
trans.Scale.y = 1
ar:SetAlpha(1)
ironBody:SetEnable(true)

local actionName
if stateName == "LADDER" then
	actionName = "ladder"
elseif stateName == "CLIMB" then
	actionName = "rope"
else
	actionName = "alert"
end

local body = ar:GetBodyEntity()
local event = ActionStateChangedEvent(actionName, actionName, 1, SpriteAnimClipPlayType.Onetime)
body:SendEvent(event)

local baseX = trans.Scale.x
local tweenFunc = function(tweenValue)
	trans.Scale.x = tweenValue * 3 * baseX
	trans.Scale.y = tweenValue * 3
	ar:SetAlpha(1 - tweenValue)
	
	if tweenValue >= 1 then
		ironBody:SetEnable(false)
	end
end
_TweenLogic:PlayTween(0.25, 1, 0.4, EaseType.Linear, tweenFunc)
end