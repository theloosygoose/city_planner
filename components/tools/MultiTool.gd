extends Node
class_name MultiTool


func _init() -> void:
    pass


func _input(event: InputEvent) -> void:
    if event is InputEventMouseButton and event.is_pressed():
        @warning_ignore("unsafe_property_access")
        match event.button_index:
            MOUSE_BUTTON_LEFT:
                @warning_ignore("unsafe_property_access")
                print("Mouse left pressed at: ", event.position)

@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
    pass
