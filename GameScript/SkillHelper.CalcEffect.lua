return function (self,delay,speed) 
return math.ceil(delay * (math.max(2, speed) + 10) / 16)
end