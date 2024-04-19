extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var passed_levels = get_parent().passed_levels
	var button_scene = load("res://Scenes/Button.tscn")
	var button
	for i in range(0, 3):
		for j in range(0, 4):
			button = button_scene.instantiate()
			button.set_position(Vector2(j * 200 + 250, i * 160 + 250))
			button.set_text(str(i*4 + j + 1))
			if passed_levels[i*4 + j] == false:
				button.modulate = Color(1,0,0)
			else:
				button.modulate = Color(0,1,0)
			# button.connect("pressed", self, "mission_selected")
			button.pressed.connect(_mission_select.bind(str(i*4 + j + 1)))
			add_child(button, true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



func _mission_select(mission_number):
	print("Mission selected" + mission_number)
	get_parent().start_mission(mission_number)
	#selected_mission = int(group.get_pressed_button().text)
	#$Continue.disabled = false
