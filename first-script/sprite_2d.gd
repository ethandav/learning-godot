extends Sprite2D

var speed = 400
var angular_speed = PI

func _process(delta):
	#var velocity = Vector2.ZERO

	#var direction = 0
	#if Input.is_action_pressed("ui_left"):
	#	direction = -1
	#if Input.is_action_pressed("ui_right"):
	#	direction = 1
	#if Input.is_action_pressed("ui_up"):
	#	velocity = Vector2.UP.rotated(rotation) * speed
	#rotation += angular_speed * direction * delta
	#position += velocity * delta
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta
	


func _on_button_pressed() -> void:
	set_process(not is_processing())
