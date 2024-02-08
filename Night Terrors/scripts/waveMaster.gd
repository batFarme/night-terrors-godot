extends Node2D
const phantom = preload("res://entities/enemy_phantom.tscn")
const leaper = "to be added"
const caster = "to be added"

@export var currentWave: int
@export var waveThresholds: Array = [ #if ive got time, figure out how to have this stuff editable in the inspector
	#wave no., enemies to be spawned, how many per wave
	[1, [phantom], range(1)],
	[2, [phantom], range(2, 4)], #talk to jaden, figure out how wave progression shoudl be structured
	[4, [leaper], range(1)],
	[5, [phantom, leaper], range(3, 6)]
]

func _ready():
	print(str(waveThresholds[2][1]))
	pass
	#just to test how multi dimensional arrays work...
func newWave():
	pass
