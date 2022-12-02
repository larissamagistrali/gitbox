extends Container
onready var text := $text
onready var timer := $Timer

var msg: Array = []

func add_msg(_msg: String)->void:
	msg.append(_msg)
		
func show_msg()->void:
	if text.visible_characters < text.bbcode_text.length():
		pass
	if msg.size()==0:
		hide()
		return
	show()
	var _msg:String=msg.pop_front()
	text.visible_characters = 0
	text.bbcode_text=_msg
	#print(msg)
	timer.start()

func clear_queue():
	msg.clear()
	
func _ready():
	pass

func _input(event):
	if event is InputEventKey and event.is_action_pressed("ui_accept"):
		show_msg()

func _on_Timer_timeout():
	text.visible_characters +=1
