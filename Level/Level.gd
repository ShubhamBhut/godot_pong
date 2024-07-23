extends Node

var PlayerScore = 0
var OpponentScore = 0


func _on_left_body_entered(body: Node2D) -> void:
	$Ball.position = Vector2(640, 360)
	OpponentScore += 1

func _on_right_body_entered(body: Node2D) -> void:
	$Ball.position = Vector2(640, 360)
	PlayerScore += 1

func _process(delta: float) -> void:
	$PlayerScore.text = str(PlayerScore)
	$OpponentScore.text = str(OpponentScore)
