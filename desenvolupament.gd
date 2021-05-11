extends Node2D

export var escena_plataforma : PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	var nova_plataforma = escena_plataforma.instance()
	nova_plataforma.position = Vector2(RandomNumberGenerator(100, 700), 580)
	add_child(nova_plataforma)
	var nova_plataforma2 = escena_plataforma.instance()
	nova_plataforma.position = Vector2(RandomNumberGenerator(100, 700), )

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	$fondo.position.y = $dorimon.position.y
