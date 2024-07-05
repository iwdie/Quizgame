extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("gobackward", "goforward")
	
	if direction:
		$AnimatedSprite2D.play("run")
		velocity.x = direction * SPEED
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	$AnimatedSprite2D.flip_h = (direction == -1)
		
	

	if velocity.x == 0:
		$AnimatedSprite2D.play("default")
	move_and_slide()
	


#func _on_animated_sprite_2d_animation_finished():
	#$AnimatedSprite2D.play("default") # Replace with function body.
