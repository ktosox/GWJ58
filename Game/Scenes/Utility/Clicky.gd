extends Area2D

# a generic scene that sends a signal when clicked

signal click

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Area2D_input_event(viewport, event:InputEvent, shape_idx):
	if event.is_class("InputEventMouseButton") and event.is_pressed():
		emit_signal("click")
	pass # Replace with function body.
