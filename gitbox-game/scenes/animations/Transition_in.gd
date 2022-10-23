extends CanvasLayer


func change_scene(path, delay = 0.01):
	$Transition_Effect.interpolate_property($Overlay, "progress", 0.0, 1.0, 2.0, Tween.TRANS_QUINT, Tween.EASE_IN_OUT, delay)
	$Transition_Effect.start()
	yield($Transition_Effect, "tween_completed")
	assert(get_tree().change_scene(path) == OK)
