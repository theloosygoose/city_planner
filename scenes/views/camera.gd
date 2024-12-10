extends Camera2D


@export var camera_speed: int = 100



# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(_delta: float) -> void:
    var input_direction: Vector2 = Input.get_vector("left", "right", "up", "down")
    position += input_direction * camera_speed
