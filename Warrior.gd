extends Node2D

onready var playback = $atree.get("parameters/playback")

func _ready():
	print("I'm here!!'")
	$atree.set_active(true)
	
	playback.travel("MoveAndFire")
	playback.start("MoveAndFire")

func _process(delta):
	if Input.is_action_pressed("Fire"):
		$atree["parameters/MoveAndFire/Transition/current"] = 1
		$"Polygons/The gun".set_visible(true)
		$Label.set_visible(true)
	else:
		$atree["parameters/MoveAndFire/Transition/current"] = 0
		$"Polygons/The gun".set_visible(false)
		$Label.set_visible(false)
