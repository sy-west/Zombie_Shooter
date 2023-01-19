extends KinematicBody2D

var speed: int = 200
var rotation_speed = 2

var vel : Vector2 = Vector2()
var rotation_dir = 0

onready var P_Sprite = $Sprite

func _ready():
	pass

func get_input():
	rotation_dir = 0
	vel = Vector2.ZERO
	if Input.is_action_pressed("move_left"):
		rotation_dir -= rotation_speed
	if Input.is_action_pressed("move_right"):
		rotation_dir += rotation_speed
	if Input.is_action_pressed("move_down"):
		vel -= transform.x * speed
	if Input.is_action_pressed("move_up"):
		vel += transform.x * speed
		

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
	
	vel = move_and_slide_with_snap(vel, Vector2())
	
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	vel += move_and_slide_with_snap(vel, Vector2())

func Shoot():
	pass
