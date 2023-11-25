extends Area2D
var parent
signal move(pos: Vector2)

# Called when the node enters the scene tree for the first time.
func _ready():
	parent = get_parent()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	# print_debug("PaddlePOS: " + str(position))
	# print_debug("Sprite2DPOS: " + str($Sprite2D.position))
	pass


func _on_movement_move(pos):
	#position = pos
	move.emit(pos)
