extends RigidBody2D

export var sceneName = "LoseScreen"

func _on_FallingFish_body_entered(body: PhysicsBody2D):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))
	else:
		body.queue_free()
