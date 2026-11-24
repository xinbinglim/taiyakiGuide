extends Area2D

var speed = 200.0

func _process(delta: float) -> void:
	position.y += speed * delta
	if position.y > 800:
		queue_free()

func _on_body_entered(body: Node2D) -> void:
	get_parent().score = get_parent().score + 1
	get_parent().get_node("Score").text = "Score: " + str(get_parent().score)
	queue_free()
