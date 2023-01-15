extends Node2D

const PLAYER = preload("res://Scenes/Player.tscn")
onready var PlayerSpawn = $PlayerSpawn

func _ready():
	var p = PLAYER.instance()
	add_child(p)
	p.position = PlayerSpawn.global_position
