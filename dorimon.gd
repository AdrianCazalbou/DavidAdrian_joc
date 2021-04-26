extends KinematicBody2D
var velocitat = Vector2(200,0)
var gravetat = 100
var velocitat_max = 250

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat = Vector2.ZERO
	velocitat.x = Input.get_action_strength("dreta")- Input.get_action_strength("esquerra")
	velocitat = move_and_slide(velocitat * velocitat_max)
	
	if velocitat.x > 0:
		$doraemon.play("dreta")
	if velocitat.x < 0:
		$doraemon.play("esquerra")
	if position.x > 800:
		position.x = int(position.x) % 800
	if position.x < 0:
		position.x = int(position.x) + 800
	
	

