extends entityBase

@export var moveSpeed: float

signal who_is_player
signal enemy_just_died
@export var player: CharacterBody2D   #temp solution for prototype bc NO WAY is this gonna work for the final build... TO-DO-FLAG-7
var targetPos

func _ready():
	#emit_signal("who_is_player")
	connect("enemy_just_died", get_parent().get_node('map_entity')._on_enemy_just_died)

func _physics_process(delta):
	targetPos = player.position
	velocity = position.direction_to(targetPos) * moveSpeed
	move_and_slide()


func _on_player_i_am_player(playerSent):
	player = playerSent
	if player.accelSpeed != null:
		print('player reference success!')
	pass # Replace with function body.


func _on_i_just_died():
	print('phantom just died!')
	emit_signal("enemy_just_died")
	queue_free()
