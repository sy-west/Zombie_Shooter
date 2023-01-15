extends KinematicBody2D

onready var P_Sprite = $Sprite

func _ready():
	pass

func _physics_process(delta):
	var mouse = get_global_mouse_position()
	P_Sprite.look_at(mouse)

func Shoot():
	pass
