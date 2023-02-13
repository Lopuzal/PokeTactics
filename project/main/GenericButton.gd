extends Button


var _id

signal button_pressed(id)
# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("..").connect("button_toggle_off", self, "_on_button_toggle_off")

func init(id,text_):
	_id = id
	text = text_
	

func _pressed():
	emit_signal("button_pressed", _id)
	
func _on_button_toggle_off():
	pressed = false
	
func _on_button_toggle_on():
	pressed = true
