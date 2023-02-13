class_name Player
extends Node

var _pokemons : Array
var selected_pokemon : Pokemon

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func add_pokemon(pokemon: Pokemon):
	_pokemons.append(pokemon)
	add_child(pokemon)

func party_size():
	return _pokemons.size()

func onbattle_party_size():
	var size = 0
	for pokemon in _pokemons:
		if pokemon.is_onbattle():
			size += 1
	return size




func get_pokemon(id):
	return _pokemons[id]

func place_units():
	pass
