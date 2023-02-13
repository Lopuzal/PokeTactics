extends Node2D


onready var hovered = $Hovered

func _ready():
	pass # Replace with function body.


func update_hovered_tile(tile: Vector2):
	hovered.clear()
	hovered.set_cell(tile.x, tile.y, 0)

func clear_hovered_tile():
	hovered.clear()

func _on_Cursor_hovered_cell(coords, cell):
	update_hovered_tile(cell.coordinates)
