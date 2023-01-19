extends KinematicBody2D

var speed: int = 250

var vel : Vector2 = Vector2.ZERO

onready var P_Sprite = $Sprite

func _ready():
	pass

func _physics_process(delta):
	vel.x = 0
	vel.y = 0
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
	if Input.is_action_pressed("move_right"):
		vel.x += speed
	if Input.is_action_pressed("move_down"):
		vel.y += speed
	if Input.is_action_pressed("move_up"):
		vel.y -= speed
	
	vel = move_and_slide_with_snap(vel, Vector2.ZERO)
	
	look_at(get_global_mouse_position())

func Shoot():
	pass
