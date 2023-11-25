extends Node2D

var starting_position
var paddle
@export var x_axis = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	paddle = $Paddle


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	# print_debug("PlayerPOS " + str(position))
	pass


func _on_movement_set_direction(direction):
	$Paddle/Movement.set_direction(direction)

func set_starting_pos(starting_pos: Vector2):
	starting_position = starting_pos

func reset():
	position = starting_position
	#paddle.position = starting_position
	pass
func _on_paddle_move(pos:Vector2):
	position = pos
