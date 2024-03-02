return function (self,sortTable,pos) 
table.sort(sortTable, function(a, b)
	return pos:Distance(a.TransformComponent.WorldPosition:ToVector2() + a.TriggerComponent.ColliderOffset) < pos:Distance(b.TransformComponent.WorldPosition:ToVector2() + b.TriggerComponent.ColliderOffset) end)
end