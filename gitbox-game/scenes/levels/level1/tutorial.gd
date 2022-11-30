extends Node2D


func _ready():
	$CenterContainer/Dialog/Container.add_msg("Eu sou o GitNinja e vou ajudar você a adquirir os conhecimentos necessários para encarar o GIT.")
	$CenterContainer/Dialog/Container.add_msg("Git é um sistema de controle de versões usado principalmente no desenvolvimento de software.")
	$CenterContainer/Dialog/Container.add_msg("Utilize os comandos disponíveis para alcançar o grande livro da sabedoria.")
	


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/levels/level1/Level1-1.tscn")
