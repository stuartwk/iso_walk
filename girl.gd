extends CharacterBody2D

export(int) var speed = 80.0

func _physics_process(delta):
	var velocity = Vector2. ZERO
	if input. is_action_pressed("ui_right"):
		velocity.x += 1.0
	if input. is_action_pressed("ui_left"):	
		velocity.x -= 1.0
	if input. is_action_pressed("ui_down"):
		velocity.y += 1.0
	if input. is_action_pressed("ui_up"):	
		velocity.y -= 1.0
		velocity = velocity.normalized()
		move_and_slide(velocity * speed)
		
		onscreenkeyboard.set_on_screen_input_vector(velocity)
