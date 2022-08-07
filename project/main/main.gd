extends Node2D

enum phases {PLACE_UNIT,UNIT_SELECTED,UNIT_MOVED}
enum player_turn {PLAYER1,PLAYER2}

onready var current_phase = phases.PLACE_UNIT
onready var current_turn = player_turn.PLAYER1

# Declare our instanced child scenes.
onready var battlemap_scene := load("res://project/battlemap/battlemap.tscn")
onready var battlemap = battlemap_scene.instance()
onready var cursor := $Cursor




func _ready():
	add_child(battlemap)
	print("Main ready.")
	print(TypesInfo.determine_type_efficiency(TypesInfo.types.GROUND, [TypesInfo.types.ELEC,TypesInfo.types.ROCK]))



func _on_Cursor_selected_cell(coords, cell):
	pass # Replace with function body.
