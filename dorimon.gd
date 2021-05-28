extends KinematicBody2D
var velocitat = Vector2(450,0)
var gravetat = 500
var velocitat_max = 500




# Called when the node enters the scene tree for the first time.
func _ready():
	Global.dorimon = self
#	$Area2D.connect("body_entered", Global.dorimon, "_on_Area2D_body_entered")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat.x = 0
	velocitat.x = Input.get_action_strength("dreta")- Input.get_action_strength("esquerra")
	velocitat.x *= velocitat_max
	velocitat.y += gravetat * delta
	velocitat = move_and_slide(velocitat)
	
	if velocitat.x > 0:
		$doraemon.play("dreta")
	if velocitat.x < 0:
		$doraemon.play("esquerra")
	if position.x > 800:
		position.x = int(position.x) % 800
	if position.x < 0:
		position.x = int(position.x) + 800
	


func _on_Area2D_body_entered(suelo):
	velocitat.y = -700
	
	
