extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_restart_pressed():
	get_parent().get_parent().restart_scene()


func _on_quit_pressed():
	get_parent().get_parent().back_to_menu()


func _on_continue_pressed():
	get_parent().get_parent().update_passed_levels()
	get_parent().get_parent().back_to_menu()
	pass # Replace with function body.
