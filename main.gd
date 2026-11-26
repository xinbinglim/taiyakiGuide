extends Node

var score = 0
var taiyaki_scene = preload("res://taiyaki.tscn")

func update_score():
	score += 1
	$Score.text = "Score: " + str(score)

func _on_timer_timeout() -> void:
	var taiyaki = taiyaki_scene.instantiate()
	taiyaki.position = Vector2(randf_range(50, 1100), -50)
	add_child(taiyaki)
