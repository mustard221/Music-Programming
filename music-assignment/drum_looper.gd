extends Node2D

var pattern = []
var steps = 16

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# get the number of different sounds I can  play
	# these are added in the editor
	num_samples = get_child_count() - 1
	
	for i in range(steps):
		pattern.push_back(-1)
	
	pattern[0] = 4
	pattern[2] = 3	
	pattern[4] = 4
	pattern[6] = 3
	pattern[8] = 4
	pattern[10] = 3
	pattern[12] = 4
	pattern[13] = 7
	pattern[14] = 7
	pattern[15] = 7
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass

var current:int
var num_samples:int

func _on_timer_timeout() -> void:
	var sn = pattern[current]
	if sn != -1:		
		var s = get_child(sn)
		s.play()
		print(current)
	current = current + 1
	if current == steps:
		current = 0;
	pass # Replace with function body.


func _on_button_2_button_down() -> void:
	var s = get_child(current)
	s.play()
	print(current)
	current = current + 1
	
	if current == steps:
		current = 0
	
	pass # Replace with function body.
