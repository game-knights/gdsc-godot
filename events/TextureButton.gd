extends TextureButton


# Declare member variables here. Examples:
var a = 2
# var b = "text"

func _ready():
	pass
	
func _input(event):
	if event is InputEventMouseButton:
		print("Heeee", a)
		a += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
