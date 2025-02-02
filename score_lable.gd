extends Label


func _physics_process(_delta: float) -> void:
	self.text="Score : " + str(Global.score)
