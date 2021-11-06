extends Node2D

var score = 15

var rus_numbers = ["ноль", "целковый", "полушка", "четвертушка", "осьмушка", 
"пудовичок", "медячок", "серебрячок", "золотничок", "девятичок", "десятичок"]

func number_system():
	var score_in_rus = ""
	var first_number = score / 10
	var second_number = score % 10
	if first_number != 0:
		score_in_rus += rus_numbers[first_number] + " да "
	score_in_rus += rus_numbers[second_number]
	return score_in_rus

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var score_field = get_node("score/Label")
	score_field.set_text("Score: " + number_system())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
