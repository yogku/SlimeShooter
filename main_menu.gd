extends Control


@onready var margin_container: MarginContainer = $MarginContainer
@onready var option_menu: Control = $OptionMenu


func _ready() -> void:
	option_menu.visible = false
	option_menu.set_process(false)

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://survivors_game.tscn")


func _on_option_pressed() -> void:
	margin_container.visible = false
	option_menu.set_process(true)
	option_menu.visible = true

func _on_exit_pressed() -> void:
	get_tree().quit()
	
	
	


func _on_option_menu_option_menu_back_pressed() -> void:
	option_menu.visible = false
	margin_container.visible = true
	margin_container.set_process(true)



# create a methot to respond to back pressed in options menu from pause menu
