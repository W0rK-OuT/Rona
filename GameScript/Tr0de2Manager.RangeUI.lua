return function (self,pos,range,color) 
if _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
    local spawn = _SpawnService:SpawnByModelId("model://43635326-d16b-4f57-8d38-ca594e88c9a1", "RangeBoxUI", Vector3.zero, _UserService.LocalPlayer.CurrentMap)
    local ui = spawn.UITransformComponent
    ui.WorldPosition.x = pos.x
    ui.WorldPosition.y = pos.y
    ui.RectSize.x = range.x * 220
    ui.RectSize.y = range.y * 220
    if color ~= nil then
        spawn.SpriteGUIRendererComponent.OutlineColor = Color(color.x / 255, color.y / 255, color.z / 255)
    end
    
    spawn:Destroy(0.4)
    --spawn:Destroy(4)
end
end