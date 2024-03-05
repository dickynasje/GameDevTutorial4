extends Area2D


func _on_Area2D_body_entered(body: PhysicsBody2D):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/" + get_tree().current_scene.get_name() + ".tscn"))
