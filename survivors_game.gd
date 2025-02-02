extends Node2D

@onready var score_canvas: CanvasLayer = $ScoreCanvas
@onready var pause_menu_canvas_layer: CanvasLayer = $PauseMenuCanvasLayer


func _ready() -> void:
	%GameOver.visible = false
	
	
func spawn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)
	


func _on_timer_timeout() -> void:
	spawn_mob()


func _on_player_health_depleated() -> void:
	
	score_canvas.visible = false
	%GameOver.visible = true
	get_tree().paused = true
	

func _on_restart_pressed() -> void:
	get_tree().paused = false
	print("Click")
	%GameOver.visible = false
	get_tree().reload_current_scene() #game restart
