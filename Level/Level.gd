extends Node


func _on_right_body_entered(body: Node2D) -> void:
	$Ball.position = Vector2(640, 360)


func _on_left_body_entered(body: Node2D) -> void:
	$Ball.position = Vector2(640, 360)
