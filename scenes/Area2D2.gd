extends Area2D



func _on_Area2D2_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/" + "WinScreen" + ".tscn"))
	pass # Replace with function body.
