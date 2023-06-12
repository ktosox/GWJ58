extends Node2D


var dead = false

# Called when the node enters the scene tree for the first time.
func _ready():
	# randomize weed
	randomize()
	$GrassSprite.region_rect.position = Vector2(32*(randi()%4),32*(randi()%3))
	$DeathParticles.texture.region = $GrassSprite.region_rect
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func weed_out():
	dead = true
	$GrassSprite.visible = false
	$DeathParticles.emitting = true
	print($DeathParticles.texture.region)
	yield(get_tree().create_timer(1.0),"timeout")
	queue_free()
	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
	if dead == false and (event.is_class("InputEventMouseButton")):
		weed_out()
	pass # Replace with function body.
