return function (self,id,quantity,startPos,endPos,time) 
if self.child ~= nil then
    if isvalid(self.child) then
        self.child:Destroy()
    end
    self.child = nil
    self.Entity.TriggerComponent.Enable = false
end
local ani = self.child

---@type Vector2
local worldPos

local curMap = _UserService.LocalPlayer.CurrentMap
if not isvalid(curMap) then
	return
end
local items = curMap:GetChildByName("items")

if id == 0 then
	local ruid
	if quantity < 50 then
		ruid = "b9bafb4366a94f3aba07cdd8294e6803"
	elseif quantity < 100 then
		ruid = "75ced97bf17c468f9f5c49875c61b1e0"
	elseif quantity < 1000 then
		ruid = "0d36b4a451f44406b380087d5baf157d" 
	else
		ruid = "06e6fbdd407d4ffaa9d0df4fe55c1d4c"
	end
	if not isvalid(ani) then
		ani = _SpawnService:SpawnByModelId("model://cb540ec6-2651-4a25-8f42-378f79f843e2", "ani", Vector3(0, 0, 999.999), items)--self.Entity)
		ani.DropAni.parent = self.Entity
		self.child = ani
	end
	ani:SetEnable(false)
	ani.SpriteRendererComponent.SpriteRUID = ruid
	
	local trans = ani.TransformComponent
	if startPos ~= nil then
		trans.WorldPosition.x = startPos.x
		trans.WorldPosition.y = startPos.y
	end
	worldPos = trans.WorldPosition:ToVector2()
else
	if not isvalid(ani) then
		ani = _SpawnService:SpawnByModelId("model://bc2e1352-0d0c-4413-ad3a-1a9a1339a8db", "ani", Vector3(0, 0, 999.999), items)--self.Entity)
		ani.DropAni.parent = self.Entity
		self.child = ani
	end
	ani:SetEnable(false)
	
	local itemTable = _ItemData:GetItem(id)
	local ruid = _GameUtil:EquipRUID(id, itemTable["ruid"])
	ani.SpriteGUIRendererComponent.ImageRUID = ruid
	
	local func = function()
		_ItemData:SetNativeSize2(ani, id, 2.2)
	end
	_TimerService:SetTimerOnce(func, 0)
	
	local trans =  ani.UITransformComponent
	if startPos ~= nil then
		trans.WorldPosition.x = startPos.x
		trans.WorldPosition.y = startPos.y + 0.165
	end
	if endPos ~= nil then
		endPos.y += 0.165
	end
	worldPos = trans.WorldPosition:ToVector2()
end

if endPos ~= nil then
	ani.DropAni:Start(id > 0, worldPos, endPos, time)
else
	if id > 0 then
		ani.UITransformComponent.WorldPosition.y += 0.165
	end
	ani:SetEnable(true)
	ani.DropAni:StartTweenLine()
end
end