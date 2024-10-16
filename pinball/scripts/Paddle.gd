extends RigidBody3D

@export var rotatePower : float
@export var hJoint : HingeJoint3D

func _process(_delta):
	if self.name == "PinPaddleL":
		if Input.is_action_pressed("paddle"):
			hJoint.set_param(HingeJoint3D.PARAM_MOTOR_TARGET_VELOCITY, rotatePower)
			hJoint.set_param(HingeJoint3D.PARAM_MOTOR_MAX_IMPULSE, rotatePower)
		else:
			hJoint.set_param(HingeJoint3D.PARAM_MOTOR_TARGET_VELOCITY, -rotatePower)
			hJoint.set_param(HingeJoint3D.PARAM_MOTOR_MAX_IMPULSE, rotatePower)
			
	else:
		if Input.is_action_pressed("paddle"):
			hJoint.set_param(HingeJoint3D.PARAM_MOTOR_TARGET_VELOCITY, -rotatePower)
			hJoint.set_param(HingeJoint3D.PARAM_MOTOR_MAX_IMPULSE, rotatePower)
		else:
			hJoint.set_param(HingeJoint3D.PARAM_MOTOR_TARGET_VELOCITY, rotatePower)
			hJoint.set_param(HingeJoint3D.PARAM_MOTOR_MAX_IMPULSE, rotatePower)
	pass
