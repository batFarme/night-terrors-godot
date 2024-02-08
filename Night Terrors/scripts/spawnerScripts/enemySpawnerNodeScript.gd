class_name EnemySpawenr2D 
extends Node2D

func _ready():
	owner.addSpawnerReference(self) #probably dont need the whole ahh custom method??? coulda just said owner.enemySpawners.append(self)... oh well, might come in handy later
