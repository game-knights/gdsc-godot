extends KinematicBody2D

onready var image_player = get_node("player")

onready var _animated_sprite = $player

var speed = 200

var vel = Vector2()

func open_dialog(number):
	#print("Good")
	#if Input.is_action_pressed("player_w"):
	get_tree().change_scene("res://Skuratov.tscn")

func get_input():
	vel = Vector2()
	if Input.is_action_pressed("player_right"):
		vel.x += speed
	if Input.is_action_pressed("player_left"):
		vel.x -= speed
	#vel = vel
	#.normalized() * speed
	
	if vel.x < 0:
		image_player.flip_h = true
	elif vel.x > 0:
		image_player.flip_h = false
		
		
func _physics_process(delta):
	get_input()
	vel = move_and_slide(vel)
	if vel.x != 0:
		_animated_sprite.play("run")
	else:
		_animated_sprite.stop()
	#vel = move_and_slide(vel, Vector2.UP)


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
