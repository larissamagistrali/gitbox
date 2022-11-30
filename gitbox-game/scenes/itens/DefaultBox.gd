extends KinematicBody2D

var velocity = Vector2.ZERO
var gravity = 1200
var is_grounded
onready var raycasts = $"Raycasts-Node2D"

func _physics_process(delta:float)->void:
	velocity.y += gravity*delta
	velocity = move_and_slide(velocity)
	is_grounded = _check_is_grounded()
		
func _check_is_grounded():
	for raycast in raycasts.get_children():
		if raycast.is_colliding():
			return true
		return false
	
