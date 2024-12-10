extends Node2D
class_name MultiTool

@export var roadnode_scene: PackedScene
@export var CityData: Resource

var click_position: Vector2

func _init() -> void:
	pass


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():

		@warning_ignore("unsafe_property_access")
		match event.button_index:

			MOUSE_BUTTON_LEFT:
				print("Mouse left pressed at: ", get_global_mouse_position())

				place_scene(roadnode_scene, get_global_mouse_position())



func _process(_delta: float) -> void:
	pass


func place_scene(scene: PackedScene, c_position: Vector2) -> void:

	var road_node: Node2D = scene.instantiate()

	road_node.position = c_position

	add_child(road_node)
