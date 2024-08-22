extends Node2D

@export var bug_scene : PackedScene
var score
func _ready():
	new_game()

func game_over() -> void:
	$BugTimer.stop()
	$ScoreTimer.stop()
	
func new_game():
	$StartTimer.start()
	$player.start_pos($StartPosition.position)
	var score = 0




func _on_score_timer_timeout():
	pass # Replace with function body.
	score += 1
	

func _on_start_timer_timeout():
	pass # Replace with function body.
	$BugTimer.start()
	$ScoreTimer.start()
	
func _on_bug_timer_timeout():
	pass # Replace with function body.
	var bug = bug_scene.instantiate()
	var bug_location = $BugPath/BugPathLocation
	bug_location.progress_ratio = randf()
	
	
	var direction = bug_location.rotation + PI /2
	bug.position = bug.location.position
	direction += randf_range(-PI /4, PI /4)
	
