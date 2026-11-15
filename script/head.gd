xtends CharacterBody3D

var sens = 0.009

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		var mouse_x = event.relative.x
		var mouse_y = event.relative.y
	
		get_parent().rotate_y(-mouse_x * sens)
		rotate_x(-mouse_y * sens)
	rotation.x = clamp(
		rotation.x,
		deg_to_rad(-90),
		deg_to_rad(90)
	)
	
	
	
	
