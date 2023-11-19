local atks = {}

function atks:new(data)
	local self = {}
	self.id = data.id
	self.name = data.name
	self.typing = data.typing
	self.category = data.category
	self.dmg = data.dmg
	self.precision = data.precision
	self.pp = data.pp
	self.description = data.description
	self.target = data.target
	self.priority = data.priority
	self.contact = data.contact
	
	setmetatable(self, {__index = atks})
	return self
end

return atks