extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal click
signal drag(on)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event.is_class("InputEventMouseButton"):
		emit_signal("click")
	pass # Replace with function body.
