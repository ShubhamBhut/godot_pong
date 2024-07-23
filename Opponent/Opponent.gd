extends CharacterBody2D

var opponent_speed = 8
var ball

func _ready():
	ball = get_parent().get_node("Ball")

func _physics_process(delta: float):
	move_and_collide(Vector2(0, get_opponent_direction() * opponent_speed))

func get_opponent_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
