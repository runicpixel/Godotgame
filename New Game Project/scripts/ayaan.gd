extends Node2D

const SPEED = 60

var direc = 1
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight
@onready var animated_sprite= $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_left.is_colliding():
		direc = 1
		animated_sprite.flip_h = false
	if ray_cast_right.is_colliding():
		direc = -1
		animated_sprite.flip_h = true
	
	position.x += direc * SPEED * delta
