extends "res://project/pokemon/pokemon.gd"



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _init(_hidden_attack, _hidden_defense, _hidden_spe_attack, _hidden_spe_defense, _hidden_hp, _hidden_speed, _level).(49,49,65,65,45,45,["Grass","Poison"]):
	set_hidden_attack(_hidden_attack)
	set_hidden_defense(_hidden_defense)
	set_hidden_spe_attack(_hidden_spe_attack)
	set_hidden_spe_defense(_hidden_spe_defense)
	set_hidden_hp(_hidden_hp)
	set_hidden_speed(_hidden_speed)
	set_level(_level)
	
