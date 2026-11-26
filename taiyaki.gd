extends Area2D

var speed = 200.0 #falling speed
@onready var main_scene = get_parent() #get parent node - which is the main_scene

func _process(delta: float) -> void: #run on every frame
	position.y += speed * delta #the taiyaki will keep falling down
	if position.y > 800: #according to the window size
		queue_free() # delete itself

func _on_body_entered(body: Node2D) -> void:
	get_parent().update_score()
	queue_free()
	
	
