extends Area2D

var screen_size
var player
var pong
var enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	player = $Player
	player.position = Vector2(screen_size.x - 70, 0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
