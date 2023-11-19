local types = require("PkmnData/types")
local grass

do
	local grass_data = {
		id = 0,
		name = "Planta",
		pros = {},
		conunter = {},
		nullEffect = {},
		sprite = Image.load("Assets/Typing/Grass/type.png", VRAM)
	}
	grass = types:new(grass_data)
end

return grass