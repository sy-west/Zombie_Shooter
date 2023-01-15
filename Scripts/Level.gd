extends Node2D

onready var player = preload("res://Scenes/Player.tscn")
onready var PlayerSpawn = $PlayerSpawn

func _ready():
	SpawnPlayer()

func SpawnPlayer():
	var p_spawn = PlayerSpawn.get_global_position()
	var p = player
	p.position = p_spawn
	p.instance()
