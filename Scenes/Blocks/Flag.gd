extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_flag_body_entered(body):
	var hero := false
	if body.has_meta("hero"):
		hero = body.get_meta("hero")
	if hero:
		var win = get_parent().get_parent().get_parent().get_node("Ui").get_node("Win")
		win.visible = true
