extends KinematicBody2D

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta:float)->void:
	$Collision2.set_enabled(true)
	if $Collision2.is_colliding():
		Level3Global.pressBtn2() 
	else:
		Level3Global.notPressBtn2() 
		#print(get_parent().name)
		#get_parent().remove_child($BlockDoor)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
