extends Node2D
var gotoquiz = false
var dimmer2 = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if gotoquiz == true  and dimmer2 > 0:
		dimmer2 -= 0.01
		self.set_modulate(Color(dimmer2,dimmer2,dimmer2))
	if dimmer2 < 0.01:
		get_tree().change_scene_to_file("res://main_quiz.tscn")
	pass
 



func _on_area_2d_body_entered(body):
	if body.name == "storylead":
		gotoquiz = true
		 # Replace with function body.
