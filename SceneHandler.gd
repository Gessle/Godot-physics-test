extends Node
var saved_mission_number
var passed_levels

# Called when the node enters the scene tree for the first time.
func _ready():
	passed_levels = [false, false, false, false, false, false, false, false, false, false, false, false]
	if FileAccess.file_exists("user://savegame.save"):
		var save_game = FileAccess.open("user://savegame.save", FileAccess.READ)
		passed_levels = save_game.get_var()

	var menu = load("res://Scenes/Menu.tscn").instantiate()
	add_child(menu, true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	pass

func back_to_menu():
	var game_scene = $GameScene
	game_scene.queue_free()
	remove_child(game_scene)
	var menu = load("res://Scenes/Menu.tscn").instantiate()
	add_child(menu, true)


func restart_scene():
	var game_scene = $GameScene
	game_scene.queue_free()
	remove_child(game_scene)
	print("Restart scene")
	print("Starting a mission " + saved_mission_number + "!")
	game_scene = load("res://Scenes/GameScene.tscn").instantiate()
	game_scene.mission_number = saved_mission_number
	add_child(game_scene, true)


func start_mission(mission_number):
	var menu = $Menu
	menu.queue_free()
	remove_child(menu)
	saved_mission_number = mission_number
	print("Starting a mission " + mission_number + "!")
	var game_scene = load("res://Scenes/GameScene.tscn").instantiate()
	game_scene.mission_number = mission_number
	add_child(game_scene, true)

func update_passed_levels():
	passed_levels[int(saved_mission_number) - 1] = true
	var file = FileAccess.open("user://savegame.save", FileAccess.WRITE)
	file.store_var(passed_levels)
	

