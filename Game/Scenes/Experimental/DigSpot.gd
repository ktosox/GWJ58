extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Clicky_click():
	if $DirtSplash.emitting == false:
		$DirtSplash.global_position = get_global_mouse_position()
		$DirtSplash.restart()
	pass # Replace with function body.
