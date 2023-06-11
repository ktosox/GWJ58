extends ColorRect




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_drag_data(position):
	print("drag")
	color = ColorN("Green")

func _input(event):
	if event.is_class("InputEventScreenTouch"):
		print("test")
	if event.is_class("InputEventScreenDrag"):
		print("test2")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
