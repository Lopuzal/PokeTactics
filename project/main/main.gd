extends Node2D

enum phases {PLACE_UNIT,UNIT_SELECTED,UNIT_MOVED}
enum player_turn {PLAYER1,PLAYER2}

onready var current_phase = phases.PLACE_UNIT
onready var current_turn = player_turn.PLAYER1

# Declare our instanced child scenes.
onready var battlemap_scene := load("res://project/battlemap/battlemap.tscn")
onready var battlemap = battlemap_scene.instance()
onready var cursor := $Cursor

onready var player1 = $Player1
onready var player2 = $Player2


func _ready():
	add_child(battlemap)
	init([{"Name":"bulbasaur"}],[{"Name":"bulbasaur"}])
	print("Main ready.")

func init(P1Pokemons : Array, P2Pokemons : Array):
	var new_pokemon
	var new_pokemon_instance
	for pokemon in P1Pokemons:
		new_pokemon = load("res://project/pokemons/"+pokemon["Name"]+"/"+pokemon["Name"]+".tscn") 
		new_pokemon_instance = new_pokemon.instance()
		new_pokemon_instance.init(12,12,12,12,12,12,12)
		player1.add_pokemon(new_pokemon_instance)

func place_pokemon(player: Player, pokemon: Pokemon, cell: TileCell):
	pokemon.visible = true
	pokemon.position = cell.center
	cell.unit = pokemon

func _on_Cursor_selected_cell(coords, cell):
	if current_phase == phases.PLACE_UNIT:
		place_pokemon(player1, player1._pokemons[0], cell)
