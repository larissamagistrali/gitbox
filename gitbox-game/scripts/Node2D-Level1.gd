extends Node2D

var pushableObjects = [];
var pushableObjectsInstance = [];

func _ready():
	init()

func init():
	pushableObjects = Level1Global.objects1
	for object in pushableObjects:
		var a = object.node.instance()
		a.position = Vector2(object.positionX, object.positionY)
		get_tree().get_current_scene().add_child(a)
		pushableObjectsInstance.append(a)

func merge(var objects):
	print("Merge in Scene 1")
	for object in objects:
		pushableObjects.append(PushableObject.new(object.node, object.positionX, object.positionY, object.originalPositionX, object.originalPositionY))
		var a = object.node.instance()
		a.position = Vector2(object.positionX, object.positionY)
		get_tree().get_current_scene().add_child(a)
		pushableObjectsInstance.append(a)
	saveState()

func reset():	
	print("Reset Scene 1")
	for i in range(pushableObjectsInstance.size()):
		pushableObjectsInstance[i].queue_free()
	pushableObjectsInstance.clear()
	pushableObjects.clear()
	merge(Level1Global.originalObjects1)

func saveState():
	print("Save State Scene 1")
	for i in range(pushableObjectsInstance.size()):
		pushableObjects[i].positionX = pushableObjectsInstance[i].position.x
		pushableObjects[i].positionY = pushableObjectsInstance[i].position.y
	Level1Global.objects1 = pushableObjects
