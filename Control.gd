extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pausa"):
		get_tree().paused = true
		visible = true




	


func _on_resum_pressed():
	get_tree().paused = false
	visible = false
	


func _on_quit_pressed():
	get_tree().change_scene("res://foto empaque portada.tscn")
	get_tree().paused = false
