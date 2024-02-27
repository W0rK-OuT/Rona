return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: SliderComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Value = math.floor(event.Value)
---------------------------------------------------------
_MobileKeyManager.colorChanged = true
_MobileKeyManager.colorValue = Value
_MobileKeyManager.mobileButtons.CanvasGroupComponent.GroupAlpha = Value / 100

self.Entity:GetChildByName("UIText").TextComponent.Text = "UI 투명도 : " .. Value .. "%"
end