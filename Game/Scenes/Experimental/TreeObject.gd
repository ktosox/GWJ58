extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	var treeSprites = $TreeSprites.get_children()
	treeSprites[randi()%3].visible = false
	treeSprites[randi()%2].visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_click():
	if $ThugShaker.is_playing() == false:
		$ThugShaker.play("Shake")
		$Leafs.restart()
		$Leafs2.restart()
	pass # Replace with function body.
