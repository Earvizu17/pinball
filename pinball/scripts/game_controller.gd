extends Node3D

@export var ball_resource: Resource

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("jump"):
		$ball.apply_force(Vector3(0, 0, -100))
	pass
