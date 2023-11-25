extends Area2D

var screen_size
var player
var pong
var enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport().size
	player = $Player
	pong = $Pong
	player.set_starting_pos(Vector2(screen_size.x - 70, screen_size.y / 2))
	pong.set_starting_pos(Vector2(screen_size.x / 2, screen_size.y / 2))
	start_game()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func start_game():
	pong.reset()
	player.reset()
