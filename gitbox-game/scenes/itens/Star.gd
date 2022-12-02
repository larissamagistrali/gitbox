extends KinematicBody2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var level = 0

func setLevel(i:int)->void:
	level = i
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta:float)->void:
	$Collision.set_enabled(true)
	$Collision2.set_enabled(true)
	$Collision3.set_enabled(true)
	if $Collision.is_colliding() or $Collision2.is_colliding() or $Collision3.is_colliding():
		$AudioStreamPlayer2D.play()
		yield(get_tree().create_timer(0.2), "timeout")
		if level==1:
			TutorialGlobal.unlockLevel2()
			get_tree().change_scene("res://scenes/levels/level2/Level2-1.tscn")
		if level==2:
			TutorialGlobal.unlockLevel3()
			get_tree().change_scene("res://scenes/levels/level3/Level3-1.tscn")
		if level==3:
			get_tree().change_scene("res://scenes/UI/end.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
