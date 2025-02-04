extends Control
@onready var option_menu: Control = $"."

#test putting option menu in servival scen directly parlel to pause menu

func _ready() -> void:
	option_menu.set_process(false)
	option_menu.visible = false
	
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("esc") and get_tree().paused:
		_on_back_pressed()

func _on_back_pressed() -> void:
	var current_scene = get_tree().current_scene.name
	option_menu.set_process(false)
	option_menu.visible = false
	if current_scene == "Menu":
		#print("Menu scene")
		get_tree().change_scene_to_file("res://Main_Menu.tscn")
	
	else:
		#print("Game scene")
		option_menu.visible = false
		option_menu.set_process(false)
		var pause_menu_margin = $"../MarginContainer"
		pause_menu_margin.visible = true

	#option_menu_back_pressed.emit()
	
