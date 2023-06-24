extends PinJoint2D


var drag = false

func _ready():
	set_physics_process(false)

func _physics_process(delta):
	if drag:
		softness = 1.5
		$GrabbyPart.global_position = get_global_mouse_position()
	else:
		softness = 3
		$GrabbyPart.global_position = global_position
		set_physics_process(false)

func _input(event):
	if event.is_class("InputEventMouseButton") and drag:
		if event.button_index == 1 and !event.is_pressed():
			drag = false

func _on_GrabbyPart_input_event(viewport, event:InputEvent, shape_idx):
	if event.is_class("InputEventMouseButton") and !drag:
		if event.button_index == 1 and event.is_pressed():
			set_physics_process(true)
			drag = true
