return function (self,point,total) 
self.localPoint = point

self.point.Text = "현재 포인트 : " .. _Util:ConvertComma(point)
self.totalPoint.Text = "충전한 포인트 : " .. _Util:ConvertComma(total)
end