extends Node2D

export var escena_plataforma : PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	var nova_plataforma = escena_plataforma.instance()
	nova_plataforma.position = Vector2(220, 580)
	add_child(nova_plataforma)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$fondo.position.y = $dorimon.position.y
