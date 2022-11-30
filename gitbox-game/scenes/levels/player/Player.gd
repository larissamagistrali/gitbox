extends KinematicBody2D

var velocity = Vector2.ZERO
var move_speed = 500
var move_speed_objects = 200
var gravity = 1200
var jump_force = -400
var is_grounded
onready var raycasts = $"Raycasts-Node2D"
var is_pushing = false;

func _physics_process(delta:float)->void:
	velocity.y += gravity*delta
	_get_input()
	
	#mover caixa
	if $PushRight.is_colliding():
		var obj = $PushRight.get_collider()
		obj.move_and_slide(Vector2(30,0) * move_speed_objects * delta)
		is_pushing = true;
	elif $PushLeft.is_colliding():
		var obj = $PushLeft.get_collider()
		obj.move_and_slide(Vector2(-30,0) *move_speed_objects * delta)
		is_pushing = true;
	else:
		is_pushing = false;
	
	velocity = move_and_slide(velocity)
	is_grounded = _check_is_grounded()
	_set_animation()	
	
func _get_input():
	velocity.x=0
	var move_direction = int(Input.is_action_pressed("move_right")) -  int(Input.is_action_pressed("move_left"))
	velocity.x = lerp(velocity.x, move_speed*move_direction,0.2)
	if move_direction != 0:
		$Sprite.scale.x = move_direction
	#mover caixa
	if velocity.x > 1:
		$PushRight.set_enabled(true)
	else:
		$PushRight.set_enabled(false)
	if velocity.x < -1:
		$PushLeft.set_enabled(true)
	else:
		$PushLeft.set_enabled(false)

func _input(event: InputEvent)->void:
	if Input.is_action_pressed("jump") and is_grounded:
		velocity.y = jump_force
		
func _check_is_grounded():
	for raycast in raycasts.get_children():
		if raycast.is_colliding():
			return true
		return false

func _set_animation():
	var anim = "idle"
	if !is_grounded:
		anim = "jump"
	elif velocity.x != 0 or is_pushing:
		anim = "run"
	if $AnimationPlayer.assigned_animation != anim:
		$AnimationPlayer.play(anim)
	
		
