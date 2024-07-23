extends CharacterBody2D

var player_speed = 20

func _physics_process(delta: float) -> void:
	var player_velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		player_velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		player_velocity.y += 1
	move_and_collide(player_velocity * player_speed)
	
