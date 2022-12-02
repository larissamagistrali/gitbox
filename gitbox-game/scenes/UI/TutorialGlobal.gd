extends Node


var level1 = true
var level2 = false
var level3 = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func unlockLevel2():
	level2 = true;
	
func unlockLevel3():
	level3 = true;
