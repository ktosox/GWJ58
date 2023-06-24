extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for D in $VisibleGround.get_children():
		D.modulate += Color(randf(),randf(),randf()) * (-0.1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
	if $DirtSplash.emitting == false and (event.is_class("InputEventMouseButton")):
		$DirtSplash.restart()
	pass # Replace with function body.
