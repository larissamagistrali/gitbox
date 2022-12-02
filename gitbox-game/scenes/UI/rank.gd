extends Control

var level1 = []
var level2 = []
var level3 = []

func addLevel1(value:int):
	level1.append(value)

func addLevel2(value:int):
	level1.append(value)

func addLevel3(value:int):
	level1.append(value)
	

func _ready():
	level1.sort()
	level2.sort()
	level3.sort()
