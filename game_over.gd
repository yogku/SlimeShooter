extends Node2D
@onready var game_over: Node2D = $"."
@onready var label_2: Label = $MarginContainer/VBoxContainer/Label2



func _on_restart_pressed() -> void:
	#print("Clicked restart")
	%GameOver.visible = false
	Global.score = 0
	get_tree().paused = false
	get_tree().reload_current_scene() #game restart


func _on_player_health_depleated() -> void:
		label_2.text = "Score : " + str(Global.score)
