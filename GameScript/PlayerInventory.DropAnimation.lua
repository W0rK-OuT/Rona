return function (self,id) 
local pos = self.Entity.TransformComponent.WorldPosition
local items = self.Entity.CurrentMap:GetChildByName("items")

local ani = _SpawnService:SpawnByModelId("model://bc2e1352-0d0c-4413-ad3a-1a9a1339a8db", "ani", Vector3(pos.x, pos.y, 999.999), items)
local itemTable = _ItemData:GetItem(id)
local ruid = _GameUtil:EquipRUID(id, itemTable["ruid"])
ani.SpriteGUIRendererComponent.ImageRUID = ruid

local func = function()
	_ItemData:SetNativeSize2(ani, id, 2.2)
end
_TimerService:SetTimerOnce(func, 0)

ani.DropAni:StartRemove(true, true)
end