extends KinematicBody2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta:float)->void:
	$Collision.set_enabled(true)
	$Collision2.set_enabled(true)
	$Collision3.set_enabled(true)
	if $Collision.is_colliding() or $Collision2.is_colliding() or $Collision3.is_colliding():
		get_tree().change_scene("res://scenes/UI/End/end.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass