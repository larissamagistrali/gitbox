extends Control

func _ready():
	$"VBoxContainer/ButtonStart".grab_focus()
		
func _on_ButtonStart_pressed() -> void:
	get_tree().change_scene("res://scenes/levels/level1/Node2D-Level1-1.tscn")
	
func _on_ButtonQuit_pressed() -> void:
	get_tree().quit()

func _on_ButtonCommands_pressed() -> void:
	get_tree().change_scene("res://scenes/itens/commands.tscn")

func _on_ButtonAbout_pressed() -> void:
	get_tree().change_scene("res://scenes/itens/about.tscn")

func _on_ButtonBack_pressed() -> void:
	get_tree().change_scene("res://scenes/itens/menu.tscn")
