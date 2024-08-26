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
	
	
	
	
	
	
	
	
	
	
	
	
	
	


func _on_bug_timer_timeout():
	pass # Replace with function body.


func _on_score_timer_timeout():
	pass # Replace with function body.


func _on_start_timer_timeout():
	pass # Replace with function body.
