class_name Pokemon
extends Sprite2D

@onready var onbattle = false

var hidden_attack : int: get = get_hidden_attack, set = set_hidden_attack
var hidden_defense : int: get = get_hidden_defense, set = set_hidden_defense
var hidden_spe_attack : int: get = get_hidden_spe_attack, set = set_hidden_spe_attack
var hidden_spe_defense : int: get = get_hidden_spe_defense, set = set_hidden_spe_defense
var hidden_hp : int: get = get_hidden_hp, set = set_hidden_hp
var hidden_speed : int: get = get_hidden_speed, set = set_hidden_speed

@export var base_attack : int: get = get_base_attack, set = set_base_attack
@export var base_defense : int: get = get_base_defense, set = set_base_defense
@export var base_spe_attack : int: get = get_base_spe_attack, set = set_base_spe_attack
@export var base_spe_defense : int: get = get_base_spe_defense, set = set_base_spe_defense
@export var base_hp : int: get = get_base_hp, set = set_base_hp
@export var base_speed : int: get = get_base_speed, set = set_base_speed

var level : int: get = get_level, set = set_level
@export(Array, preload("res://project/auto_load/types_info.gd").types) var types = [0,0]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func init(_hidden_attack, _hidden_defense, _hidden_spe_attack, _hidden_spe_defense, _hidden_hp, _hidden_speed, _level):
	set_hidden_attack(_hidden_attack)
	set_hidden_defense(_hidden_defense)
	set_hidden_spe_attack(_hidden_spe_attack)
	set_hidden_spe_defense(_hidden_spe_defense)
	set_hidden_hp(_hidden_hp)
	set_hidden_speed(_hidden_speed)
	set_level(_level)
	visible = false
	
	""" Setget Functions """
	
func set_hidden_attack(_hidden_attack) -> void:
	hidden_attack = _hidden_attack
	
func get_hidden_attack() -> int:
	return hidden_attack
	

func set_hidden_defense(_hidden_defense) -> void:
	hidden_defense = _hidden_defense
	
func get_hidden_defense() -> int:
	return hidden_defense
	

func set_hidden_spe_attack(_hidden_spe_attack) -> void:
	hidden_spe_attack = _hidden_spe_attack
	
func get_hidden_spe_attack() -> int:
	return hidden_spe_attack
	

func set_hidden_spe_defense(_hidden_spe_defense) -> void:
	hidden_spe_defense  = _hidden_spe_defense
	
func get_hidden_spe_defense() -> int:
	return hidden_spe_defense
	

func set_hidden_hp(_hidden_hp) -> void:
	hidden_hp = _hidden_hp
	
func get_hidden_hp() -> int:
	return hidden_hp
	

func set_hidden_speed(_hidden_speed) -> void:
	hidden_speed = _hidden_speed
	
func get_hidden_speed() -> int:
	return hidden_speed
	
""" ----------------------- """
func set_base_attack(_base_attack) -> void:
	base_attack = _base_attack
	
func get_base_attack() -> int:
	return base_attack
	

func set_base_defense(_base_defense) -> void:
	base_defense = _base_defense
	
func get_base_defense() -> int:
	return base_defense
	

func set_base_spe_attack(_base_spe_attack) -> void:
	base_spe_attack = _base_spe_attack
	
func get_base_spe_attack() -> int:
	return base_spe_attack
	

func set_base_spe_defense(_base_spe_defense) -> void:
	base_spe_defense = _base_spe_defense
	
func get_base_spe_defense() -> int:
	return base_spe_defense
	

func set_base_hp(_base_hp) -> void:
	base_hp = _base_hp
	
func get_base_hp() -> int:
	return base_hp
	

func set_base_speed(_base_speed) -> void:
	base_speed = _base_speed
	
func get_base_speed() -> int:
	return base_speed
	

func set_level(_level) -> void:
	level = _level
	
func get_level() -> int:
	return level
	
func enable_onbattle() -> void:
	onbattle = true
	
func disable_onbattle() -> void:
	onbattle = false
	
func is_onbattle() -> bool:
	return onbattle


#func set_types(_types : Array) -> void:
#	types = _types
#
#func get_types() -> Array:
#	return types
