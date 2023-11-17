extends CharacterBody2D

## one thing i don't understand, how does the code
## know where to find the AnimatedSprite2D?
## maybe it just checks for the closest child node?
@onready var _animated_sprite = $AnimatedSprite2D

## _process is called in every frame of the general loop
func _process(delta):
	## we are watching for input actions here
	if Input.is_action_pressed("ui_right"):
		_animated_sprite.play('walk')
	elif Input.is_action_pressed("ui_left"):
		_animated_sprite.play('walk')
	else: 
		_animated_sprite.play('idle')
