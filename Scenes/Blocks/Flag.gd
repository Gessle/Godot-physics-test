extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_flag_body_entered(body):
	var hero := false
	if body.has_meta("hero"):
		hero = body.get_meta("hero")
	if hero:
		print("You won!")
	pass # Replace with function body.
