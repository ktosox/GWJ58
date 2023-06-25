extends DampedSpringJoint2D

signal dragging(state)

var drag = false


func _physics_process(delta):
	
	if drag:
		$GrabbyPart.global_position = get_global_mouse_position()
	else:
		global_rotation = 0
		$GrabbyPart.global_position = global_position

func _input(event):
	if event.is_class("InputEventMouseButton") and drag:
		if event.button_index == 1 and !event.is_pressed():
			emit_signal("dragging",false)
			drag = false
			

func _on_GrabbyPart_input_event(viewport, event:InputEvent, shape_idx):
	if event.is_class("InputEventMouseButton") and !drag:
		if event.button_index == 1 and event.is_pressed():
			drag = true
			emit_signal("dragging",true)
