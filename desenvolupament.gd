extends Node2D
export var escena_plataforma : PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	
	randomize()
	
	var nova_plataforma = escena_plataforma.instance()
	nova_plataforma.position = Vector2(rand_range(100, 700), 600)
	add_child(nova_plataforma)
	var nova_plataforma2 = escena_plataforma.instance()
	nova_plataforma2.position = Vector2(rand_range(100,700), 300)
	add_child(nova_plataforma2)
	var nova_plataforma3 = escena_plataforma.instance()
	nova_plataforma3.position = Vector2(rand_range(100,700), 0)
	add_child(nova_plataforma3)
	var nova_plataforma4 = escena_plataforma.instance()
	nova_plataforma4.position = Vector2(rand_range(100,700), -300)
	add_child(nova_plataforma4)
	var nova_plataforma5 = escena_plataforma.instance()
	nova_plataforma5.position = Vector2(rand_range(100,700), -600)
	add_child(nova_plataforma5)
	var p_ultima = nova_plataforma5.position.y
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $dorimon.velocitat.y < 0 and $dorimon.position.y <= $cel.position.y:
		$cel.position.y = $dorimon.position.y
	$mort. position.y = $cel.position.y
	
	

	
	 
	
	var d = $P_mesalta.position.y - $dorimon.position.y
	
	if d <= -800:
		var nova_plataforma = escena_plataforma.instance()
		nova_plataforma.position = Vector2(rand_range(100,700), $P_mesalta.position.y + 300)
		add_child(nova_plataforma)
		$P_mesalta.position.y = $P_mesalta.position.y - 300
		
	
	
	
	






func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://gameover.tscn")
