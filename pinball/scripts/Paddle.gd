extends RigidBody3D

@export var rotatePower: float
@export var hJoint: HingeJoint3D

func _process(_delta):
	if Input.is_action_pressed("paddle"):
		rotate_paddle(true)
	else:
		rotate_paddle(false)

func rotate_paddle(is_pressed: bool):
	var direction = rotatePower if is_pressed else -rotatePower
	if self.name == "PinPaddleL":
		hJoint.set_param(HingeJoint3D.PARAM_MOTOR_TARGET_VELOCITY, direction)
	else:
		hJoint.set_param(HingeJoint3D.PARAM_MOTOR_TARGET_VELOCITY, -direction)
	
	hJoint.set_param(HingeJoint3D.PARAM_MOTOR_MAX_IMPULSE, rotatePower)
