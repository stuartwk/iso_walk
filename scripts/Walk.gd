extends CharacterBody2D

## one thing i don't understand, how does the code
## know where to find the AnimatedSprite2D?
## maybe it just checks for the closest child node?
@onready var _animated_sprite = $AnimatedSprite2D

@export var speed: int = 80.0;


## _process is called in every frame of the general loop
func _process(delta):
	## we are watching for input actions here
	if Input.is_action_pressed("ui_right"):
		_animated_sprite.play('walk_right')
		velocity.x = 1
	elif Input.is_action_pressed("ui_left"):
		_animated_sprite.play('walk_left')
		velocity.x = -1
	elif Input.is_action_pressed("ui_down"):
		_animated_sprite.play("walk_down")
		velocity.y = 1
	elif Input.is_action_pressed("ui_up"):
		_animated_sprite.play("walk_up")
		velocity.y = -1
	else: 
		velocity.x = 0
		velocity.y = 0
		_animated_sprite.play('idle')
	
	velocity = velocity.normalized() * speed
	move_and_slide()
