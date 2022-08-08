class_name Player
extends Node

var _pokemons : Array

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func add_pokemon(pokemon: Pokemon):
	_pokemons.append(pokemon)
	add_child(pokemon)

func place_units():
	pass
