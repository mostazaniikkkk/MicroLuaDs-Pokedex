local pkmn = {}

function pkmn:new(data)
  local self = {}
  self.id = data.id
  self.name = data.name
  self.category = data.category
  self.typing = data.typing
  self.skills = data.skills
  self.weight = data.weight
  self.height = data.height
  self.eggGroup = data.eggGroup
  self.mascPercent = data.mascPercent
  self.femPercent = data.femPercent
  self.color = data.color
  self.figure = data.figure
  self.footprint = data.footprint
  self.growl = data.growl
  self.description = data.description
  self.moveset = data.moveset
  self.mts = data.mts
  self.tutorMvs = data.tutorMvs
  self.eggMvs = data.eggMvs
  self.stats = data.stats
  self.sprite = data.sprite
  
  -- Asignar la clase pkmn como el prototipo de la instancia
  setmetatable(self, {__index = pkmn})
  return self
end

return pkmn