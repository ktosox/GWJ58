extends YSort


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	$Label.text = String(OS.get_screen_size())
#	if OS.get_screen_size().x > 800:
#		$Camera2D.zoom *= 0.5
	pass # Replace with function body.
	var count = 33
	while count > 0 :
		count -= 1
		var newDrop = load("res://Scenes/Experimental/RainDrop.tscn").instance()
		newDrop.global_position = Vector2(rand_range(40,330),rand_range(40,620))
		get_tree().current_scene.add_child(newDrop)
		newDrop.modulate *= 0.7 + randf() * 0.3 
		newDrop.get_node("LineMover").seek(randf()*5)
		yield(get_tree().create_timer(0.3),"timeout")
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
