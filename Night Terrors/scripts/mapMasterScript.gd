extends Node2D
#also doubles as enemy spawner

@export var currentBase: TileMap
@export var nextBase: TileMap
@export var currentLayout: TileMap
@export var nextLayout: TileMap
@export var youAreWinSprite: Sprite2D  #prototype thing. to be removed and replaced with something else.
var amountOfEnemies: int

# Called when the node enters the scene tree for the first time.
func _ready():
	amountOfEnemies = 3 #TO BE UPDATED BEYOND PROTOTYPE TO-DO-FLAG-8
	pass # Replace with function body.

func countEnemySpawners():
	pass
func _physics_process(delta):
	if youAreWinSprite.visible:
		if Input.is_action_just_pressed("startButton"):
			get_tree().change_scene_to_file("res://scenes/prototype_environment.tscn") #hhhhhhhhh dont like this fix one bit but itll do for now. TO-DO-FLAG-9
	pass
func _on_enemy_just_died():
	amountOfEnemies -= 1
	if amountOfEnemies == 0:
		youAreWinSprite.visible = true
		pass
