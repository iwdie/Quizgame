extends Node2D
var questionno = 1
@onready var correct_option
@onready var selected_option
var score = 0 
signal correctans()
signal wrongans()
signal buttonpreesed()

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta): 
	$RichTextLabel2.set_text("SCORE:%d"%score)
	if questionno == 1: 
		correct_option = 1
		$"DialogueBorder-01/RichTextLabel".set_text("What is the process called in which plants make their food?")
		$TouchScreenButton/RichTextLabel.set_text("Photosynthesis")
		$TouchScreenButton2/RichTextLabel.set_text("Chloroplast")
		$TouchScreenButton3/RichTextLabel.set_text("Germination")
		$TouchScreenButton4/RichTextLabel.set_text("Seedling")
	elif questionno == 2:
		correct_option =3
		$"DialogueBorder-01/RichTextLabel".set_text(" Which species young are described as Blackbacks?")
		$TouchScreenButton/RichTextLabel.set_text("Chimpanzees")
		$TouchScreenButton2/RichTextLabel.set_text("Brown Bears")
		$TouchScreenButton3/RichTextLabel.set_text("Gorillas")
		$TouchScreenButton4/RichTextLabel.set_text("Jaguars")
	elif questionno == 3:
		correct_option = 4
		$"DialogueBorder-01/RichTextLabel".set_text("The elephant is the heaviest land animal in the world. Weighing up to almost 8,000 pounds, which is the second heaviest land animal?")
		$TouchScreenButton/RichTextLabel.set_text("Bison")
		$TouchScreenButton2/RichTextLabel.set_text("Gorilla")
		$TouchScreenButton3/RichTextLabel.set_text("Hippopotamus")
		$TouchScreenButton4/RichTextLabel.set_text("Rhinoceros")
	elif questionno == 4:
		correct_option = 2 
		$"DialogueBorder-01/RichTextLabel".set_text("Which is the largest fruit in the world ?")
		$TouchScreenButton/RichTextLabel.set_text("Papaya")
		$TouchScreenButton2/RichTextLabel.set_text("Jackfruit")
		$TouchScreenButton3/RichTextLabel.set_text("Coconut")
		$TouchScreenButton4/RichTextLabel.set_text("Breadfruit")
		
		
		
	elif questionno == 5:
		correct_option = 1
		$"DialogueBorder-01/RichTextLabel".set_text("Which one of the below is a root vegetable?")
		$TouchScreenButton/RichTextLabel.set_text("Cabbage")
		$TouchScreenButton2/RichTextLabel.set_text("Beetroot")
		$TouchScreenButton3/RichTextLabel.set_text("Carrot")
		$TouchScreenButton4/RichTextLabel.set_text("Radish")
		
		
		
	elif questionno == 6:
		correct_option = 2
		$"DialogueBorder-01/RichTextLabel".set_text("Which part of plant perform photosynthesis")
		$TouchScreenButton/RichTextLabel.set_text("Flower")
		$TouchScreenButton2/RichTextLabel.set_text("Leaf")
		$TouchScreenButton3/RichTextLabel.set_text("Stem")
		$TouchScreenButton4/RichTextLabel.set_text("Root")
		
	elif questionno == 7:
		correct_option = 3
		$"DialogueBorder-01/RichTextLabel".set_text("Which is the tallest tree on earth?")
		$TouchScreenButton/RichTextLabel.set_text("Oak")
		$TouchScreenButton2/RichTextLabel.set_text("Eucalyptus")
		$TouchScreenButton3/RichTextLabel.set_text("Coast Redwood")
		$TouchScreenButton4/RichTextLabel.set_text("Giant Sequoia")
		
		
	elif questionno == 8:
		correct_option = 1
		$"DialogueBorder-01/RichTextLabel".set_text(" Which island is the largest source of Vanilla, and is the only island on which Lemurs are found?")
		$TouchScreenButton/RichTextLabel.set_text("Madagascar")
		$TouchScreenButton2/RichTextLabel.set_text("Mauritius")
		$TouchScreenButton3/RichTextLabel.set_text("Papua New Guinea")
		$TouchScreenButton4/RichTextLabel.set_text("Zeelandia")
		
	elif questionno == 9:
		correct_option = 4
		$"DialogueBorder-01/RichTextLabel".set_text("Which is the largest flower in world?")
		$TouchScreenButton/RichTextLabel.set_text("Lotus")
		$TouchScreenButton2/RichTextLabel.set_text("Sunflower")
		$TouchScreenButton3/RichTextLabel.set_text("Rose")
		$TouchScreenButton4/RichTextLabel.set_text("Rafflesia")
		
	elif questionno == 10:
		correct_option = 1
		$"DialogueBorder-01/RichTextLabel".set_text("Which is the tallest grass in the world")
		$TouchScreenButton/RichTextLabel.set_text("Bamboo")
		$TouchScreenButton2/RichTextLabel.set_text("Wheat")
		$TouchScreenButton3/RichTextLabel.set_text("Sugarcane")
		$TouchScreenButton4/RichTextLabel.set_text("Barley")
		
		
		
		
	else:
		correct_option = 3
		$CharacterBody2D/AnimatedSprite2D.play()
		
	#if selected_option == correct_option:
	#	correctans.emit()                          #cant use this here cause _process runs the code every frame so it will keep on running the animation every frame.
												   
	#	     
	#if selected_option != correct_option:
	#	wrongans.emit()
func _on_correctans():
	$CharacterBody2D/AnimatedSprite2D.play("attack")
	print("correct")
	$AudioStreamPlayer2D2.play()
	score += 10
	#Global.score += 1         
				   
	$ColorRect.set_color(Color(0.7,0.7,0.9))
	$Timer.start()
	 # Replace with function body.
	
	


func _on_wrongans():
	print("wrong")
	$AnimatedSprite2D.play("attack_demon")
	$AudioStreamPlayer2D.play()
	
	$"DialogueBorder-01".set_modulate(Color(0.8,0.3,0.3))
	$"GameMenus-01".set_modulate(Color(0.4,0.2,0.2))
	$TouchScreenButton.set_modulate(Color(0.8,0.3,0.3))
	$TouchScreenButton2.set_modulate(Color(0.8,0.3,0.3))
	$TouchScreenButton3.set_modulate(Color(0.8,0.3,0.3))
	$TouchScreenButton4.set_modulate(Color(0.8,0.3,0.3))
	$Timer.start()
	
	
	
	 # Replace with function body.



func _on_touch_screen_button_pressed(): 
	selected_option = 1
	buttonpreesed.emit()
	
	
	# Replace with function body.


func _on_animated_sprite_2d_animation_finished():
	$AnimatedSprite2D.play("default")
	
	
	
	# Replace with function body.
	


func _on_touch_screen_button_2_pressed():
	selected_option =2 # Replace with function body.
	buttonpreesed.emit()


func _on_touch_screen_button_3_pressed():
	selected_option = 3 # Replace with function body.
	buttonpreesed.emit()


func _on_touch_screen_button_4_pressed():
	selected_option = 4 # Replace with function body.
	buttonpreesed.emit()
	



func _on_buttonpreesed():
	
	
	if selected_option == correct_option:
		correctans.emit()  
	
	else:
		wrongans.emit()
		
	
	$Timer2.start()
	 # Replace with function body
	




func _on_timer_timeout():
	$"DialogueBorder-01".set_modulate(Color(1,1,1))
	$"GameMenus-01".set_modulate(Color(1,1,1))
	$TouchScreenButton.set_modulate(Color(1,1,1))
	$TouchScreenButton2.set_modulate(Color(1,1,1))
	$TouchScreenButton3.set_modulate(Color(1,1,1))
	$TouchScreenButton4.set_modulate(Color(1,1,1))
	$ColorRect.set_color(Color(0.09,0.16,0.211))
	
	
	
	 # Replace with function body.


func _on_timer_2_timeout():
	questionno += 1 # Replace with function body.
	
