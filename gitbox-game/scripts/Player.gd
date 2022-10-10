extends KinematicBody2D

var velocity = Vector2.ZERO
var move_speed = 100
var gravity = 1200
var jump_force = -100
var is_grounded
onready var raycasts = $"Raycasts-Node2D"

func _physics_process(delta:float)->void:
	velocity.y += gravity*delta
	
	_get_input()
	
	if Input.is_action_pressed("jump"):
		velocity.y = jump_force
		
	velocity = move_and_slide(velocity)
	
func _get_input():
	var move_direction = int(Input.is_action_pressed("move_right")) -  int(Input.is_action_pressed("move_left"))
	velocity.x = move_speed*move_direction
	if move_direction != 0:
		$Sprite.scale.x = move_direction
