extends Node2D
const phantom = preload("res://entities/enemy_phantom.tscn")
@export var currentWave: int
@export var waveIntensities: Array = [
	#[wave number, enemies to spawn, minimum to max enemies to spawn]
	[1, phantom, range(3, 7)],
]

func _ready():
	pass
	#just to test how multi dimensional arrays work...
func newWave():
	pass
