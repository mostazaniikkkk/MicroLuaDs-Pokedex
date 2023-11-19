local showData = {}
local pkmn = require("PkmnData/pkmn")

local function dividirDescripcion(descripcion, longitudLinea)
    local lineas = {}
    local indice = 1

    while #descripcion > 0 do
        if #descripcion <= longitudLinea then
            lineas[indice] = descripcion
            descripcion = ""
        else
            local i = longitudLinea
            while i > 0 and string.sub(descripcion, i, i) ~= " " do
                i = i - 1
            end
            if i > 0 then
                lineas[indice] = string.sub(descripcion, 1, i - 1)
                descripcion = string.sub(descripcion, i + 1)
            else
                lineas[indice] = string.sub(descripcion, 1, longitudLinea)
                descripcion = string.sub(descripcion, longitudLinea + 1)
            end
        end
        indice = indice + 1
    end

    return lineas
end

local function showPokemon(id, controller)
	local pkmnData = require("Assets/Pokemon/" .. id .."/data")
	local pokemon = pkmn:new(pkmnData)
	
	--Pantalla superior
	screen.blit(SCREEN_UP,0,0,pokemon.sprite)
	screen.print(SCREEN_UP, 125, 30, pokemon.name)
	screen.print(SCREEN_UP, 125, 45, "Pokemon " .. pokemon.category)
	
	--screen.print(SCREEN_UP, 125, 60, pokemon.typing[1].name)
	screen.blit(SCREEN_UP,125,60,pokemon.typing[1].sprite)
	
	screen.print(SCREEN_UP, 125, 80, "Peso: " .. pokemon.weight .. "Kg.")
	screen.print(SCREEN_UP, 125, 95, "Altura: " .. pokemon.height .. "Mts.")
	screen.print(SCREEN_UP, 125, 110, "Color: " .. pokemon.color)
	screen.print(SCREEN_UP, 125, 125, "Nmro. nacional: " .. pokemon.id)
	
	--Pantalla inferior
    local cases = {
        [1] = function()
            local lineas = dividirDescripcion(pokemon.description, 37)
            for i, linea in ipairs(lineas) do
                screen.print(SCREEN_DOWN, 10, 10 + 15 * (i - 1), linea)
            end
        end
        -- agregar más casos aquí
    }

    local func = cases[controller]
    if func then
        func()
    else
        -- código para el caso predeterminado
    end

end

showData.showPokemon = showPokemon

return showData