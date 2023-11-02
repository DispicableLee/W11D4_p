# {
#   "imageUrl": "/images/pokemon_snaps/1.svg",
#   "id": 1,
#   "number": 1,
#   "attack": 49,
#   "defense": 49,
#   "name": "Bulbasaur",
#   "type": "grass",
#   "moves": [
#     "tackle",
#     "vine whip"
#   ],
#   "captured": true,
#   "createdAt": "2020-12-16T01:17:24.119Z",
#   "updatedAt": "2020-12-16T01:17:24.119Z"
# }

poke_moves = []
@pokemon.moves.each do |move|
    poke_moves << move.name
end

json.extract! @pokemon, :image_url, :id, :number, :attack, :defense, :name
json.type @pokemon.poke_type
json.moves poke_moves
json.extract! @pokemon, :captured, :created_at, :updated_at
