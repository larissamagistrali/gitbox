extends Node

var objects1 = [];
var objects2 = [];

func _ready() -> void:
	var node = preload("res://scenes/itens/KinematicBody2D-Box.tscn")
	var positionX = 112
	var positionY = 284
	var o1 = PushableObject.new(node, positionX, positionY, positionX, positionY)
	objects1.append(o1)
	
	var node2 = preload("res://scenes/itens/KinematicBody2D-Box.tscn")
	var positionX2 = 92
	var positionY2 = 284
	var o2 = PushableObject.new(node2, positionX2, positionY2, positionX2, positionY2)
	objects2.append(o2)
	
func print1():
	print("Array de Objetos do 1")
	for o in objects1:
		print(o.positionX, " ", o.positionY)
		
	
func print2():
	print("Array de Objetos do 2")
	for o in objects2:
		print(o.positionX, " ", o.positionY)
