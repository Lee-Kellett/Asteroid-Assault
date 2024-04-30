extends Node2D

var asteroid = preload("res://scenes/Asteroid Path Test.tscn")

func _input(event):
	if(event.is_action_pressed("ui_accept")):
		SpawnAsteroid()

func SpawnAsteroid():
	var instance = asteroid.instantiate()
	add_child(instance)
	
