local atkClass = require("PkmnData/atkClass")

local state

do
	local state_data = {
		id = 0,
		name = "Especial",
		icon = Image.load("Assets/AtkClass/Special/icon.png", VRAM)
	}
	
	state = atkClass:new(state_data)
end

return state