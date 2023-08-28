extends Area


var body

func _on_body_entered(enbody):
	#print(enbody.name)
	if enbody.name == "Player":
		body = enbody
		
		#body.enabled = false
		
		get_parent().get_node("CSGCombiner/CSGBox3/Eye1Pivot/Model").start()
		$Model/Mesh0.visible = false
		transform.origin.y += 5
		yield(get_tree().create_timer(2.5), "timeout")
		
		#body.enabled = true
