extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var posx = 2.05;
	for _i in range(100):
		var dup = duplicate(DUPLICATE_SIGNALS)
		dup.transform = dup.transform.translated(Vector3(posx, 0, 0))
		posx += 2.025;
		get_parent().call_deferred("add_child", dup)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
