extends Node2D
class_name Movement

var screen_size = Vector2()
@export var speed = 400
var _direction = Vector2()
var texture_size: Vector2
var parent

func _ready():
	texture_size = Vector2.ZERO #get_node("../Paddle/Sprite2D").texture.get_size() * $Sprite2D.scale
	screen_size = get_viewport_rect().size
	parent = get_parent()
	
func set_direction(direction: Vector2) -> void:
	_direction = direction
	
func _process(delta):
	var normal_vector: Vector2 = _direction.normalized() * speed
	parent.position += normal_vector * delta
	parent.position = parent.position.clamp(Vector2(0, 0) , screen_size)

