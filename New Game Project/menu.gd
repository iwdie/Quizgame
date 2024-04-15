extends Node2D
var factno = 1
var dimmer = 1
var goforward = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if factno == 1:
		$RichTextLabel.set_text("[center] Bamboo is an extremely rapid growing plant. In fact, some bamboo varieties can grow almost a metre 
(about 3.2 feet) in a single day. [/center]")
	if factno == 2:
		$RichTextLabel.set_text("[center] Caffeine works as a pesticide in a coffee plant. [/center]")
	if factno == 4:
		$RichTextLabel.set_text("[center] Apple’s volume consists of 25% air which is why it floats on water[/center]")
	if factno == 5:
		$RichTextLabel.set_text("[center] More than 85% of plant life is found in the ocean.

 [/center]")
	if factno == 6:
		$RichTextLabel.set_text("[center] Poison Ivy produces a skin irritant known as urushiol which can cause an allergic reaction like an itchy rash on the exposed skin. [/center]")
	if factno == 7:
		$RichTextLabel.set_text("[center] Many plants are carnivores like the Venus Flytrap and eat tiny little insects and spiders to gain useful nutrients. [/center]")
	if factno == 8:
		$RichTextLabel.set_text("[center] In order to help plants to grow, fertilisers are added to the soil or sprayed on them. Manure, which is actually animal waste is a fertiliser too. [/center]")
	if factno == 9:
		$RichTextLabel.set_text("[center]  Gingko Biloba which dates to about 250 million years ago is the oldest living tree species in the world. [/center]")
	if factno == 10:
		$RichTextLabel.set_text("[center]  Banana is actually an Arabic word for fingers. [/center]")
	if factno == 11:
		$RichTextLabel.set_text("[center] Cabbage has 91% water content. [/center]")
	if factno == 12:
		$RichTextLabel.set_text("[center] There are more than 300,000 plant species identified till date and the list is constantly expanding. [/center]")
	if factno == 13:
		$RichTextLabel.set_text("[center] Plant matter which settles down at the base of water bodies like swamps etc. can turn into coal through a process is known as metamorphosis. [/center]")
	 
	
	if dimmer > 0 and goforward==true:
		dimmer -= 0.01
		self.set_modulate(Color(dimmer,dimmer,dimmer))

	if dimmer < 0.01:
		get_tree().change_scene_to_file("res://story.tscn")
func _on_timer_timeout():
	factno += 1 # Replace with function body.
	$Timer.start()
	


func _on_touch_screen_button_2_pressed():
	goforward = true
	$AudioStreamPlayer2D2.play()
	  # Replace with function body.
	pass


func _on_timer_2_timeout():
	pass # Replace with function body.
