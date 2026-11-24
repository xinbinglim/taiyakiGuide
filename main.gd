extends Node2D

var score = 0

var taiyaki_scene = preload("res://taiyaki.tscn")


func _on_timer_timeout() -> void:
	var taiyaki = taiyaki_scene.instantiate()
	taiyaki.position = Vector2(randf_range(50, 1100), -50)
	add_child(taiyaki)
