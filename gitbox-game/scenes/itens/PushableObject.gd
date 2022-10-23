extends Node2D

class_name PushableObject

var node
var positionX
var positionY
var originalPositionX
var originalPositionY

func _init(node, positionX, positionY, originalPositionX, originalPositionY):
	self.node = node
	self.positionX = positionX
	self.positionY = positionY
	self.originalPositionX = originalPositionX
	self.originalPositionY = originalPositionY
