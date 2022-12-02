extends Node2D


func _ready():
	$Dialog/Container.add_msg("Eu sou o GitNinja e vou ajudar você a adquirir os conhecimentos necessários para encarar o GIT.")
	$Dialog/Container.add_msg("Git é um sistema de controle de versões usado principalmente no desenvolvimento de software.")
	$Dialog/Container.add_msg("Utilize os comandos disponíveis para alcançar o grande livro da sabedoria.")
	
	if !TutorialGlobal.level2:
		$b2.disabled = true
		
	if !TutorialGlobal.level3:
		$b3.disabled = true
	

func _on_b2_pressed():
	get_tree().change_scene("res://scenes/levels/level2/Level2-1.tscn")


func _on_b3_pressed():
	get_tree().change_scene("res://scenes/levels/level3/Level3-1.tscn")


func _on_b1_pressed():
	get_tree().change_scene("res://scenes/levels/level1/Level1-1.tscn")
