extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var lastMouse = Vector2(0, 0)
var childCamera: Camera

# Called when the node enters the scene tree for the first time.
func _ready():
	childCamera = get_node("Camera")
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _input(event):
	if event is InputEventMouseMotion:
		rotation.y -= event.relative.x * 0.001
		childCamera.rotation.x -= event.relative.y * 0.001
		if childCamera.rotation.x < -PI/2:
			childCamera.rotation.x = -PI/2
		elif childCamera.rotation.x > PI/2:
			childCamera.rotation.x = PI/2

func _physics_process(delta):
	var input_direction = Input.get_vector("left", "right", "up", "down") * 20 * delta
	translate(Vector3(input_direction.x, 0, input_direction.y))
	
	if Input.is_action_pressed("fly"):
		translate(Vector3(0, 20 * delta, 0))
	if Input.is_action_pressed("sink"):
		translate(Vector3(0, -20 * delta, 0))
