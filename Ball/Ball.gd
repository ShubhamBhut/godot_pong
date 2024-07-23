extends CharacterBody2D

var ball_speed = 800
var ball_velocity = Vector2.ZERO

func _ready():
	randomize()
	ball_velocity.x = [-1, 1][randi() % 2]
	ball_velocity.y = [-0.7, 0.7][randi() % 2]

func _physics_process(delta: float):
	var collision_object = move_and_collide(ball_velocity * ball_speed * delta)
	if collision_object:
		ball_velocity = ball_velocity.bounce(collision_object.get_normal())

func stop_ball():
	ball_speed = 0

func restart_ball():
	ball_speed = 800
	ball_velocity.x = [-1, 1][randi() % 2]
	ball_velocity.y = [-0.7, 0.7][randi() % 2]

