extends Label


func _ready() -> void:
	ModeSetting.mode_changed.connect(_mode_changed)
	 

func _mode_changed(mode: ModeSetting.MODES) -> void:
	text = ModeSetting.MODES.keys()[mode]
