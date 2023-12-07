extends RigidBody3D


@export var move_speed: float = 6.0

func _physics_process(delta):
	if Input.is_key_pressed(KEY_A):
		linear_velocity.x = -move_speed
	elif Input.is_key_pressed(KEY_D):
		linear_velocity.x = move_speed
	else:
		linear_velocity.x = 0


func _on_body_entered(body):
	if body.is_in_group("Trees"):
		get_tree().reload_current_scene()
