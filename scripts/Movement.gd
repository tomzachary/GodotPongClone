extends Node2D
class_name Movement

var screen_size = Vector2()
@export var speed = 400
var _direction = Vector2()
var texture_size: Vector2

func _ready():
	texture_size = Vector2.ZERO #get_node("../Paddle/Sprite2D").texture.get_size() * $Sprite2D.scale
	screen_size = get_viewport_rect().size
	
func set_direction(direction: Vector2) -> void:
	_direction = direction
	
func _process(delta):
	print_debug("Process Called! " + str(_direction))
	var normal_vector: Vector2 = _direction.normalized() * speed
	position += normal_vector * delta
	position = position.clamp(Vector2(0, 0) , screen_size)

