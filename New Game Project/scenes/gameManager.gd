extends Node

var score = 0
@onready var label_3 = $Label3

func add_point():
	score += 1
	label_3.text = "You collected " + str(score) + " coins"
