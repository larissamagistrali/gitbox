extends Node

var objects1 = [];
var objects2 = [];
var objects3 = [];
var originalObjects1 = [];
var originalObjects2 = [];
var originalObjects3 = [];
var isBtn1Pressed = false
var isBtn2Pressed = false

func _ready() -> void:
	#var node = preload("res://scenes/itens/DefaultBox.tscn")
	#var positionX = 112
	#var positionY = 284
	#originalObjects1.append(PushableObject.new(node, positionX, positionY, positionX, positionY))
	#objects1.append(PushableObject.new(node, positionX, positionY, positionX, positionY))
	
	var node2 = preload("res://scenes/itens/DefaultBox.tscn")
	var positionX2 = 450
	var positionY2 = 284
	originalObjects2.append(PushableObject.new(node2, positionX2, positionY2, positionX2, positionY2))
	objects2.append(PushableObject.new(node2, positionX2, positionY2, positionX2, positionY2))
	
	
func pressBtn1():
	if(!isBtn1Pressed):
		isBtn1Pressed = true;

func notPressBtn1():
	if(isBtn1Pressed):
		isBtn1Pressed = false;
	
func pressBtn2():
	if(!isBtn2Pressed):
		isBtn2Pressed = true;

func notPressBtn2():
	if(isBtn2Pressed):
		isBtn2Pressed = false;
	
func print1():
	print("Array de Objetos do 1")
	for o in objects1:
		print(o.positionX, " ", o.positionY)
		
	
func print2():
	print("Array de Objetos do 2")
	for o in objects2:
		print(o.positionX, " ", o.positionY)
