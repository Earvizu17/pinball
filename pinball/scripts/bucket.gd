extends Area3D

@export var ball: Resource

func _on_body_entered(body: Node3D) -> void:
	
	body.queue_free()
	pass
