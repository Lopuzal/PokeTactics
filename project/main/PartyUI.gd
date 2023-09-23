extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var buttons : Array

@onready var selected_button = null


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_Main_ui_init():
	var player = get_node("../../Player1")
	var new_button
	var new_button_instance
	print(player.party_size())
	for i in range(player.party_size()):
		new_button = load("res://project/buttons/GenericButton.tscn") 
		new_button_instance = new_button.instance()
		new_button_instance.init(i,player.get_pokemon(i).name)
		buttons.append(new_button_instance)
		add_child(new_button_instance)
		new_button_instance.connect("button_pressed", Callable(self, "_on_button_pressed"))

func _on_button_pressed(id):
	if selected_button != null:
		buttons[selected_button].button_pressed = not(buttons[selected_button].pressed)
	selected_button = id

func done_selecting(id):
	buttons[id].disabled = true
	selected_button = null

func get_selected_button():
	return selected_button

func is_selected():
	return selected_button != null



