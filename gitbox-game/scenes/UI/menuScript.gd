extends Control

func _ready():
	pass
	
func _on_ButtonStart_pressed() -> void:
	get_tree().change_scene("res://scenes/UI/tutorial.tscn")
	
func _on_ButtonQuit_pressed() -> void:
	get_tree().quit()

func _on_ButtonCommands_pressed() -> void:
	get_tree().change_scene("res://scenes/UI/commands.tscn")

func _on_ButtonAbout_pressed() -> void:
	get_tree().change_scene("res://scenes/UI/about.tscn")

func _on_ButtonBack_pressed() -> void:
	get_tree().change_scene("res://scenes/UI/menu.tscn")

func _on_ButtonRank_pressed() -> void:
	get_tree().change_scene("res://scenes/UI/rank.tscn")

func _on_LinkButton_pressed():
	OS.shell_open("https://git-scm.com/doc")
