return function (self) 
local bar = _UserService.LocalPlayer:GetChildByName("Gagebar")
if bar == nil then
	return
end

local jobType = _GameUtil:JobType(_UserService.LocalPlayer.PlayerStats.job)
if jobType == 5 then -- 파랑
	bar:GetChildByName("Color").SpriteRendererComponent.SpriteRUID = "5632e1d3cf3642ae9dbe4c19c74542d9" -- bar
	bar:GetChildByName("Bar").SpriteRendererComponent.SpriteRUID = "dd643f28ec3b41ef90204d6bba4b088d" -- gauge
else
	bar:GetChildByName("Color").SpriteRendererComponent.SpriteRUID = "abaffa04e961433aa63e600e8e4c8958"
	bar:GetChildByName("Bar").SpriteRendererComponent.SpriteRUID = "93327cff612e4c09bb7729e22d023c71"
		
	--bar:GetChildByName("Color").SpriteRendererComponent.SpriteRUID = "07a2c42e6c0240f991920ab7e426f691"
	--bar:GetChildByName("Bar").SpriteRendererComponent.SpriteRUID = "46d200e4dced431fbc84ce2d86c105b0"
end
end