extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("CLICK"):
		print("clicked")
		queue_free()


func _on_mouse_entered():
	pass

