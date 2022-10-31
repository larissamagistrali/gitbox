extends AcceptDialog


func _ready():
	add_cancel("Cancelar")
	add_button("Continuar", true)


func _on_AcceptDialog_confirmed():
	pass # popup_centered_ratio(0,5)
