extends Node
class_name ModeManager

enum MODES {
    DRAW = 0,
    EDIT = 1,
    DELETE = 2,
}

@export var active_mode: MODES

signal mode_changed(new_mode: MODES)

func _input(event: InputEvent) -> void:
    if event is InputEventKey:
        @warning_ignore("unsafe_property_access")
        if event.pressed and event.keycode == KEY_E:
            next_mode()
        @warning_ignore("unsafe_property_access")
        if event.pressed and event.keycode == KEY_Q:
            prev_mode()


func next_mode() -> void:
    print("Next Mode")
    active_mode = active_mode + 1

    if active_mode > MODES.size() - 1:
        active_mode = MODES.DRAW


    print(active_mode)
    mode_changed.emit(active_mode)
    pass

func prev_mode() -> void:
    print("Previous Mode")
    active_mode = active_mode - 1

    if active_mode < 0:
        active_mode = MODES.DELETE

    print(active_mode)
    mode_changed.emit(active_mode)
    pass

