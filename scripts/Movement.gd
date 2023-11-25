extends Node2D
class_name Movement

signal move(pos: Vector2)
var screen_size = Vector2()
@export var speed = 400
var _direction = Vector2()
var texture_size: Vector2
var parent

func _ready():
	texture_size = get_node("../Sprite2D").texture.get_size() * get_node("../Sprite2D").scale
	# print_debug("Texture Size: " + str(texture_size))
	screen_size = get_viewport().size
	parent = get_parent()
	
func set_direction(direction: Vector2) -> void:
	_direction = direction
	
func _process(delta):
	var normal_vector: Vector2 = _direction.normalized() * speed
	var movement_vector = parent.position + normal_vector * delta
	movement_vector = movement_vector.clamp(Vector2(0, 0) , screen_size)
	move.emit(movement_vector)
	print_debug("Movment " + str(movement_vector))
	#print_debug("ScreenSize: " + str(screen_size))

	

