extends Area2D
var starting_position

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func set_starting_pos(starting_pos: Vector2):
	starting_position = starting_pos

func reset():
	position = starting_position