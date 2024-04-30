extends Node2D

@onready var path : PathFollow2D = $Path2D/PathFollow2D
@export var speed = 100

func _physics_process(delta):
	path.progress += speed * delta
	if(path.progress_ratio >= 1.0):
		destination_reached()
	
func destination_reached():
	# What happens when the asteroid reaches the end of the path?
	# At this stage just destroying the object
	print("Path end reached")
	queue_free()
