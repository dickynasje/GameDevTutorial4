class_name ObjSpawner
extends Node2D

export (PackedScene) var obstacle
export var spawn_time: float = 4.0
export var spawner_interval: float = 2.0
class Params:
	var time: float
	func _init(time: float) -> void:
		self.time = time
		
func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instance()
	get_parent().add_child(spawned)

	var spawn_pos = global_position

	spawned.global_position = spawn_pos
	yield(get_tree().create_timer(spawn_time), "timeout")
	get_parent().remove_child(spawned)
	
func repeat():
	spawn()
	yield(get_tree().create_timer(spawner_interval), "timeout")
	repeat()

