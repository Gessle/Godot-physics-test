extends Node2D

var mission_number

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var map = load("res://Scenes/Maps/Map" + mission_number + ".tscn").instantiate()
	map.set_name("Map")
	add_child(map, true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
