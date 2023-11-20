local atks = require("PkmnData/atks")
local types = require("PkmnData/types")
local atkClass = require("PkmnData/atkClass")

local absorb

do
	local grass = require("Assets/Typing/Grass/typing")
	local class = require("Assets/AtkClass/Special/class")
	
	local absorb_data = {
		id = 0,
		name = "Absorber",
		typing = types:new(grass),
		category = types:new(class),
		dmg = 20,
		pp = 25,
		description = "Causa daño y el usuario recupera el 50% de los PS restados al objetivo",
		target = "single",
		priority = 0,
		contact = false
	}
	
	absorb = atks:new(absorb_data)
end

return absorb