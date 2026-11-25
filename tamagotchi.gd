extends Node2D

var hunger = 100
var happiness = 50

func _ready() -> void:
	pass # Replace with function body.

func _on_feed_pressed() -> void:
	hunger += 5
	$Huger.text = "Hunger: " + str(hunger)
	$Happiness.text = "Happiness: " + str(happiness)


func _on_play_pressed() -> void:
	happiness += 5
	hunger -= 5
	$Huger.text = "Hunger: " + str(hunger)
	$Happiness.text = "Happiness: " + str(happiness)


func _on_timer_timeout() -> void:
	hunger -= 5
	happiness -=5
	$Huger.text = "Hunger: " + str(hunger)
	$Happiness.text = "Happiness: " + str(happiness)
	$Timer.start()
