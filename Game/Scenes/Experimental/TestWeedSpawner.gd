extends Node2D

var weedScene = preload("res://Scenes/Experimental/DestructibleWeed.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func spawn_weeds():
	var amount = 1 + randi()%3
	while amount > 0:
		amount -= 1
		var weed = weedScene.instance()
		weed.global_position = global_position + Vector2(rand_range(-100,100),rand_range(-100,100))
		get_tree().current_scene.add_child(weed)
		
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	if get_tree().get_nodes_in_group("Weed").size() < 8:
		spawn_weeds()
	pass # Replace with function body.
