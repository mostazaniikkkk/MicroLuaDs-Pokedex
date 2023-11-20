local pkmn = require("PkmnData/pkmn")
local types = require("PkmnData/types")
local atks = require("PkmnData/atks")

local maractus

do
  --Carga datos
  local grass = require("Assets/Typing/Grass/typing")
  local absorb = require("Assets/Atks/Grass/absorb")

  
  --Carga data Pokemon
  local maractus_data = {
    id = 556,
    name = "Maractus",
    category = "Cactus",
    typing = {types:new(grass)},
    skills = {"Absorbe agua", "Clorofila"},
    weight = 28,
    height = 1,
    eggGroup = {"Planta"},
    mascPercent = 50,
    femPercent = 50,
    color = "Verde",
    figure = "Bípedo",
    footprint = "Huella de Maractus",
    growl = "Sonido de Maractus",
    description = "Vive en regiones áridas, donde se adapta al clima seco gracias a su habilidad para absorber agua. Cuando se siente amenazado, lanza sus espinas como proyectiles o se protege con un escudo de algodón. Maractus tiene un carácter alegre y le gusta bailar al ritmo de sus propias maracas, que produce al mover sus brazos. Su danza se dice que trae la lluvia y la prosperidad al desierto.",
    moveset = {atks:new(absorb)},
    mts = {"MT01", "MT02", "MT03", ...},
    tutorMvs = {"Rayo solar", "Gigadrenado", "Latigazo", ...},
    eggMvs = {"Drenadoras", "Púas", "Síntesis", ...},
    stats = {75, 86, 67, 106, 67, 60},
	sprite = Image.load("Assets/Pokemon/556/maractus_front_0.png", VRAM)
  }
  
  maractus = pkmn:new(maractus_data)
end

return maractus