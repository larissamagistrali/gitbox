extends Node

var objects1 = [];
var objects2 = [];
var originalObjects1 = [];
var originalObjects2 = [];

func _ready() -> void:
	var node2 = preload("res://scenes/itens/DefaultBox.tscn")
	var positionX2 = 314
	var positionY2 = 135
	originalObjects2.append(PushableObject.new(node2, positionX2, positionY2, positionX2, positionY2))
	objects2.append(PushableObject.new(node2, positionX2, positionY2, positionX2, positionY2))
	
func print1():
	print("Array de Objetos do 1")
	for o in objects1:
		print(o.positionX, " ", o.positionY)
		
	
func print2():
	print("Array de Objetos do 2")
	for o in objects2:
		print(o.positionX, " ", o.positionY)
