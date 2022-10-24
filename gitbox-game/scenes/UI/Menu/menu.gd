extends Control

func _ready():
	pass
	
func _on_ButtonStart_pressed() -> void:
	get_tree().change_scene("res://scenes/levels/level1/Level1-1.tscn")
	
func _on_ButtonQuit_pressed() -> void:
	get_tree().quit()

func _on_ButtonCommands_pressed() -> void:
	get_tree().change_scene("res://scenes/UI/Commands/commands.tscn")

func _on_ButtonAbout_pressed() -> void:
	get_tree().change_scene("res://scenes/UI/About/about.tscn")

func _on_ButtonBack_pressed() -> void:
	get_tree().change_scene("res://scenes/UI/Menu/menu.tscn")
