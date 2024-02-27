return function (self,exp,needExp) 
local percent = 1 - math.min(1, exp / needExp)
self.expPercent.RectSize = Vector2(self.expMaskSize * percent, self.maskYSize)
self.expText.Text = math.floor(exp) .. "<color=#99cc33>[</color>" .. math.floor(exp / needExp * 10000) * 0.01 .."%<color=#99cc33>]</color>"
end