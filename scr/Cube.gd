extends KinematicBody


func _ready():
	$Model/Mesh0.mesh.surface_get_material(0).uv1_scale = Vector3(1,1,1)/Transform(transform.basis.get_rotation_quat()).xform(scale)
