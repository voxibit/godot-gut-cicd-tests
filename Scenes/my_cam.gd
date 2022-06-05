extends Camera

var pos0: Vector3


# Called when the node enters the scene tree for the first time.
func _ready():
	pos0 = get_translation()
	translate(Vector3(0, 1, 0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translate((get_translation() - pos0) * Vector3(0, -1, 0) * delta)
