extends CharacterBody2D

func _physics_process(delta):
	velocity.y += 4
	if Input.is_action_pressed("ui_right"):
		velocity.x = 50
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -50
	else:
		velocity.x = 0
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -120
	move_and_slide()
