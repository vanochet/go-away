extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	mesh.surface_get_material(0).uv1_scale = Vector3(1, 1, 1)/\
		Transform(transform.basis.get_rotation_quat()).xform(get_parent().get_parent().scale)
