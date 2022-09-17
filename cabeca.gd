extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()

func _physics_process(delta):	
	motion.y = 0
	motion.x = 0

	if Input.is_action_just_pressed("ui_right"):
		print("Posição")
		motion.x = 2500
		motion.y = 0
		print(position.x)
	elif Input.is_action_just_pressed("ui_up"):
		motion.y = -2500
		motion.x = 0
	elif Input.is_action_just_pressed("ui_left"):
		motion.x = -2500
		motion.y = 0
	elif Input.is_action_just_pressed("ui_down"):
		motion.y = 2500
		motion.x = 0

	motion = move_and_slide(motion, UP)
