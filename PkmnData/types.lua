local types = {}

function types:new(data)
  local self = {}
  self.id = data.id
  self.name = data.name
  self.pros = data.pros
  self.conunter = data.conunter
  self.nullEffect = data.nullEffect
  self.sprite = data.sprite
  
  setmetatable(self, {__index = pkmn})
  return self
end

return types