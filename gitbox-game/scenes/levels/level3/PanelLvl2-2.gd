extends Panel

onready var current_scene = get_parent().get_node("Panel").get_parent().get_node(".")
onready var changer = get_parent().get_node("Transition_in")

export var path : String

func _ready():
	pass	
	
func _on_btnScene1_pressed():
	current_scene.saveState()
	changer.change_scene("res://scenes/levels/level3/Level2-1.tscn")	
	
func _on_btnScene3_pressed():
	current_scene.saveState()
	changer.change_scene("res://scenes/levels/level3/Level2-3.tscn")

func _on_btnResetScene2_pressed():
	current_scene.reset()

func _on_btnMenu_pressed() -> void:
	changer.change_scene("res://scenes/itens/menu.tscn")


func _on_btnMergeScene1_pressed():
	current_scene.merge(Level2Global.objects1)


func _on_btnMergeScene3_pressed():
	pass # Replace with function body.
