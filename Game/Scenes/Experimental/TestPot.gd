extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$TxProps.global_rotation = 0
	pass


func _on_Draggy_dragging(state):
#	$CollisionShape2D.disabled = state
	print("drag cahnged: ", state)
	pass # Replace with function body.
