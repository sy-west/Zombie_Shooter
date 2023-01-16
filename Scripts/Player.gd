extends KinematicBody2D

onready var P_Sprite = $Sprite
var target = Vector2.ZERO
var speed = 500
var velocity = global_position.direction_to(target) * speed

func _ready():
	pass

func _physics_process(delta):
	var mouse = get_global_mouse_position()
	P_Sprite.look_at(mouse)
	
	if Input.is_mouse_button_pressed(1): #when click left moouse button
		target = get_global_mouse_position()
		velocity = global_position.direction_to(target) * speed
	if global_position.distance_to(target) > 5:
		velocity = move_and_slide(velocity)

func Shoot():
	pass
