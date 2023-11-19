local showData = require("PkDex/showData")

local id = 556 --maractus
local controller = 1

while not Keys.held.X do
	local actions = {
	[Keys.held.Left] = function()
		controller = controller - 1
	end,
	[Keys.held.Right] = function()
		controller = controller + 1
	end,
	[Keys.held.Up] = function()
		-- código para la acción de la tecla arriba
	end,
	[Keys.held.Down] = function()
		-- código para la acción de la tecla abajo
	end,
	-- agregar más acciones aquí
	}
	
	-- Controlador del programa
	local key = Controls.read()
	
	showData.showPokemon(id, controller)
  
	render()
end