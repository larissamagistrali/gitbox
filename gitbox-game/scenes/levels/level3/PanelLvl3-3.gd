extends Panel

onready var current_scene = get_parent().get_node("Panel").get_parent().get_node(".")
onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _ready():
	pass	
	
func _on_btnScene1_pressed():
	current_scene.saveState()
	changer.change_scene("res://scenes/levels/level3/Level3-1.tscn")	

func _on_btnResetScene2_pressed():
	current_scene.reset()

func _on_btnMenu_pressed() -> void:
	changer.change_scene("res://scenes/UI/menu.tscn")


func _on_btnMergeScene1_pressed():
	current_scene.merge(Level3Global.objects1,true)

func _on_btnScene2_pressed():
	current_scene.saveState()
	changer.change_scene("res://scenes/levels/level3/Level3-2.tscn")


func _on_btnMergeScene2_pressed():
	current_scene.merge(Level3Global.objects2,true)
