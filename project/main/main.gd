extends Node2D

signal ui_init
signal ui_update()

enum phases {PLACE_UNIT,SELECT_UNIT,UNIT_SELECTED,UNIT_MOVED}
enum player_turn {PLAYER1,PLAYER2}

var party_ui

@onready var current_phase = phases.PLACE_UNIT
@onready var current_turn = player_turn.PLAYER1

# Declare our instanced child scenes.
@onready var battlemap_scene := load("res://project/battlemap/battlemap.tscn")
@onready var battlemap = battlemap_scene.instantiate()
@onready var cursor := $Cursor

@onready var player1 = $Player1
@onready var player2 = $Player2

@export var onbattle_party_size : int

func _ready():
	add_child(battlemap)
	init([{"Name":"bulbasaur"},{"Name":"charmander"}],[{"Name":"bulbasaur"}])
	ui_init()
	party_ui = get_node("Camera3D/PartyUI")
	print("Main ready.")

func _process(delta):
	
	pass

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
	pokemon.enable_onbattle()

func ui_init():
	emit_signal("ui_init")

func _on_Cursor_selected_cell(coords, cell):
	if current_phase == phases.PLACE_UNIT and party_ui.is_selected():
		place_pokemon(player1, player1._pokemons[party_ui.get_selected_button()], cell)
		party_ui.done_selecting(party_ui.get_selected_button())
		if player1.onbattle_party_size() >= onbattle_party_size:
			current_phase = phases.SELECT_UNIT
	if current_phase == phases.SELECT_UNIT and cell.occupied():
		get_node("Overlay").update_unit_selected(cell.coordinates)


