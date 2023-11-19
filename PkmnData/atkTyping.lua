local atkType = {}

function atkType:new(data)
	local id = data.id
	local name = data.name
	local spr = data.spr
	
	setmetatable(self, {__index = atkType})
	return self
end

return atkType