extends Area2D

export var sceneName: String = "Level2"

func _on_Area2D_body_entered(body: PhysicsBody2D):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))
