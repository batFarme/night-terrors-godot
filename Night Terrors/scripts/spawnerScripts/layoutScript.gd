class_name MapLayout2D
extends TileMap

var enemySpawners: Array
var mySize
const phantom = preload("res://entities/enemy_phantom.tscn") #TO-DO-FLAG-10 rewrite this to work with wave system


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func addSpawnerReference(theSpawnerInQuestion):
	enemySpawners.append(theSpawnerInQuestion)

func spawnMonsters(numberToSpawn, whoToSpawn: Array):
	for i in numberToSpawn:
		
