extends Node2D

enum phases {PLACE_UNIT,UNIT_SELECTED,UNIT_MOVED}
enum player_turn {PLAYER1,PLAYER2}

onready var current_phase = phases.PLACE_UNIT
onready var current_turn = player_turn.PLAYER1

# Declare our instanced child scenes.
onready var battlemap := $Battlemap
onready var cursor := $Cursor


func _ready():
	print("Main ready.")
	



func _on_Cursor_selected_cell(coords, cell):
	pass # Replace with function body.
