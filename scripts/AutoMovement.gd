extends Movement


# Called when the node enters the scene tree for the first time.
func _ready():	
	var random:= RandomNumberGenerator.new()
	var direction:= Vector2(0, random.randf_range(-1, 1))
	set_direction(direction)
	super._ready()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	super._process(delta)
