extends Node2D
var preludeend = false
var visibletext = 0
var shade = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	$RichTextLabel.set_text("[center]In a world where nature thrived, an ancient demon named Malgazar pet of the Demon~lord KARKASH emerged, driven by a desire to destroy. With each step, Malgazar poisoned rivers, twisted trees, and darkened skies[/center]")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	
	if visibletext < 400:
		visibletext += 0.4
		
		$RichTextLabel.set_visible_characters(visibletext)
	pass
	
	if preludeend == true and shade >0:
		shade -= 0.01
		self.set_modulate(Color(shade, shade,shade))
	if shade < 0.01:
		get_tree().change_scene_to_file("res://menu.tscn")
		

func _on_timer_timeout():
	
	visibletext = 0
	$RichTextLabel.set_text("
In a world threatened by impending doom, all hope rested on Erlon, the wise wizard. With his staff ablaze with ancient magic, he alone could save them. Whispers of his power spread like wildfire, and now, as darkness loomed, all eyes turned to him. Aware of the burden upon his shoulders, Erlon stepped forward, ready to wield his magic and protect the realm from its impending fate.

 ")
	$"Designer-Copy".set_texture(load("res://Designer (3).jpeg"))
	 # Replace with function body.


func _on_touch_screen_button_pressed():
	$AudioStreamPlayer2D2.play()
	preludeend = true
	 # Replace with function body.
