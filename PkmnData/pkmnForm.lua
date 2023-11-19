local pkmnForm = {}

function pkmnForm:new(data)
	local id = data.id
	local name = data.name
	local spr = data.spr
	
	setmetatable(self, {__index = pkmnForm})
	return self
end

return pkmnForm