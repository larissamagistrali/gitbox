extends Panel

onready var current_scene = get_parent().get_node("Panel").get_parent().get_node(".")
onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _ready():
	pass
	
func _on_btnScene1_pressed():
	current_scene.saveState()
	changer.change_scene(path)

func _on_btnResetScene2_pressed():
	current_scene.reset()
	
func _on_btnMergeScene2_pressed():
	current_scene.merge(Level2Global.objects1,true)

func _on_btnMenu_pressed() -> void:
	changer.change_scene("res://scenes/itens/menu.tscn")
