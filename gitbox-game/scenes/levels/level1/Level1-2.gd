extends Node2D

var pushableObjects = [];
var pushableObjectsInstance = [];

func _ready():
	init()
	yield(get_tree().create_timer(3.0), "timeout")
	get_node("Panel/checkoutPopUp").popup_centered()
	yield(get_tree().create_timer(2.0), "timeout")
	get_node("Panel/checkoutPopUp").hide()

func init():
	pushableObjects = Level1Global.objects2
	for object in pushableObjects:
		var a = object.node.instance()
		a.position = Vector2(object.positionX, object.positionY)
		get_tree().get_current_scene().add_child(a)
		pushableObjectsInstance.append(a)

func merge(var objects):
	if(!has_collision(objects)):
		print("Merge Successfully in Scene 2")
		for object_to_merge in objects:
			var box_to_merge: KinematicBody2D = object_to_merge.node.instance()
			box_to_merge.position = Vector2(object_to_merge.positionX, object_to_merge.positionY)
			get_tree().get_current_scene().add_child(box_to_merge)
			pushableObjects.append(PushableObject.new(object_to_merge.node, object_to_merge.positionX, object_to_merge.positionY, object_to_merge.originalPositionX, object_to_merge.originalPositionY))
			pushableObjectsInstance.append(box_to_merge)
		saveState()
		yield(get_tree().create_timer(1.0), "timeout")
		get_node("Panel/mergePopUp").popup_centered()
		yield(get_tree().create_timer(2.0), "timeout")
		get_node("Panel/mergePopUp").hide()
	else:
		print("Merge Conflict")
		yield(get_tree().create_timer(1.0), "timeout")
		get_node("Panel/conflictPopUp").popup_centered()
		yield(get_tree().create_timer(2.0), "timeout")
		get_node("Panel/conflictPopUp").hide()
	
func has_collision(var objects):
	var has_conflict = false
	for object_to_merge in objects:
		for object_in_scene in pushableObjectsInstance:
			var box_to_merge: KinematicBody2D = object_to_merge.node.instance()
			box_to_merge.position = Vector2(object_to_merge.positionX, object_to_merge.positionY)
			get_tree().get_current_scene().add_child(box_to_merge)
			if(!is_colliding(box_to_merge, object_in_scene)):
				get_tree().get_current_scene().remove_child(box_to_merge)
			else:
				get_tree().get_current_scene().remove_child(box_to_merge)
				has_conflict = true
				break;
	return has_conflict
	
func is_colliding(obj1: KinematicBody2D, obj2: KinematicBody2D):
	var collisionShape1: CollisionShape2D = obj1.get_node("CollisionShape2D")
	var collisionShape2: CollisionShape2D = obj2.get_node("CollisionShape2D")
	return collisionShape1.shape.collide(collisionShape1.global_transform, collisionShape2.shape, collisionShape2.global_transform)

func reset():	
	print("Reset Scene 2")
	for i in range(pushableObjectsInstance.size()):
		pushableObjectsInstance[i].queue_free()
	pushableObjectsInstance.clear()
	pushableObjects.clear()
	merge(Level1Global.originalObjects2)
	yield(get_tree().create_timer(1.0), "timeout")
	get_node("Panel/resetPopUp").popup_centered()
	yield(get_tree().create_timer(2.0), "timeout")
	get_node("Panel/resetPopUp").hide()
	
func saveState():
	print("Save State Scene 2")
	for i in range(pushableObjectsInstance.size()):
		pushableObjects[i].positionX = pushableObjectsInstance[i].position.x
		pushableObjects[i].positionY = pushableObjectsInstance[i].position.y
	Level1Global.objects2 = pushableObjects
