return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "ExitButton" then
	_PetOptionManager:CloseItemUI()
else
	local code = Entity:GetChildByName("code")
	if code == nil then
		return
	end
	local num = tonumber(code.TextComponent.Text)
	_PetOptionManager:AddItem(num)
end
end