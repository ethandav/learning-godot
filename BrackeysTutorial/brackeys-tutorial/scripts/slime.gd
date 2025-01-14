extends Node2D

const SPEED = 30

var direction = 1
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_2d_left: RayCast2D = $RayCast2DLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = 1
	if ray_cast_2d_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = 0
		
	position.x += direction * SPEED * delta


func _on_attack_zone_body_entered(body: Node2D) -> void:
	if body.attacking:
		animated_sprite_2d.animation = "take_damage"
		$AttackZone/Timer.start()


func _on_timer_timeout() -> void:
	queue_free()
