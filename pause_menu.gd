extends Control

@onready var margin_container: MarginContainer = $MarginContainer
@onready var option_menu: Control = $OptionMenu



func _ready() -> void:
	$AnimationPlayer.play("RESET")

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")

	
	
func test_if_esc():
	#also check if option menu is visibal
	if Input.is_action_just_pressed("esc") and !get_tree().paused and !option_menu.visible:
		pause() 
	elif Input.is_action_just_pressed("esc") and get_tree().paused and !option_menu.visible:
		resume()
	

func _on_resume_pressed() -> void:
	resume()

func _on_restart_pressed() -> void:
	resume()
	Global.score = 0
	get_tree().reload_current_scene()
	


func _on_option_pressed() -> void:
	margin_container.visible = false
	margin_container.set_process(false)
	option_menu.visible = true
	option_menu.set_process(true)
	#print("option menu visibal now")
	



func _on_exit_pressed() -> void:
	get_tree().quit()
	
	
func _process(_delta: float) -> void:
	test_if_esc() 
